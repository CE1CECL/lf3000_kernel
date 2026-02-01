/*
 * (C) Copyright 2009
 * jung hyun kim, Nexell Co, <jhkim@nexell.co.kr>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#include <linux/module.h>
#include <linux/platform_device.h>
#include <sound/pcm.h>
#include <sound/pcm_params.h>
#include <sound/soc.h>
#include <sound/soc-dai.h>
#include <sound/jack.h>
#include <linux/gpio.h>
#include <mach/platform.h>

#include "../codecs/nau8822.h"
#include "nxp-i2s.h"


#define	pr_debug	printk

#ifndef CONFIG_PLAT_NXP4330_SANTIAGO	/* temporary */
#define	AUDIO_AMP_POWER		CFG_IO_AUDIO_AMP_POWER
#endif

#define PLARFORM_CLK_32K_256	8192000
//extern unsigned int nau88c22_read_IIC(struct snd_soc_codec *codec, unsigned char addr);
//extern void nau88c22_write_IIC(struct snd_soc_codec *codec, unsigned char addr, unsigned int value);
//extern void nau88c22_write_IICMask(struct snd_soc_codec *codec, u8 Offset, u16 Mask, u16 Data);

//static struct snd_soc_jack_gpio jack_gpio;
static struct snd_soc_codec *nau88c22 = NULL;
static int codec_bias_level = 0;


static int nau88c22_jack_status_check(void);
static struct snd_soc_jack_gpio jack_gpio = {
	//.invert		= true,			// High detect : invert = false
	.name		= "hp-gpio",
	.report		= SND_JACK_HEADPHONE | SND_JACK_HEADSET | SND_JACK_MECHANICAL | SND_JACK_AVOUT,
	.debounce_time = 200,
	.jack_status_check = nau88c22_jack_status_check,
};

static struct snd_soc_jack hp_jack;


static int nau88c22_jack_status_check(void)
{
	struct snd_soc_codec *codec = nau88c22;
	int jack = jack_gpio.gpio;
	int invert = jack_gpio.invert;
	int level = gpio_get_value_cansleep(jack);

	if (!codec)
		return -1;

	if(invert)
		level = !level;

	printk("%s: hp jack %s\n", __func__, level?"IN":"OUT");

	if (!level) {
#ifndef CONFIG_PLAT_NXP4330_SANTIAGO	/* temporary */
		gpio_direction_output(AUDIO_AMP_POWER, 1);
#endif
		printk("SPK out \n");
		snd_soc_update_bits(codec, NAU8822_REG_POWER_MANAGEMENT_2, 0x180, 0x0);
		snd_soc_update_bits(codec, NAU8822_REG_LHP_VOLUME, 0x40, 0x40);
		snd_soc_update_bits(codec, NAU8822_REG_RHP_VOLUME, 0x40, 0x40);

		snd_soc_update_bits(codec, NAU8822_REG_POWER_MANAGEMENT_3, 0x60, 0x60);
		snd_soc_update_bits(codec, NAU8822_REG_LSPKOUT_VOLUME, 0x40, 0x0);
		snd_soc_update_bits(codec, NAU8822_REG_RSPKOUT_VOLUME, 0x40, 0x0);
	} else {
#ifndef CONFIG_PLAT_NXP4330_SANTIAGO	/* temporary */
		gpio_direction_output(AUDIO_AMP_POWER, 0);
#endif
		printk("HP out \n");
		snd_soc_update_bits(codec, NAU8822_REG_POWER_MANAGEMENT_2, 0x180, 0x180);
		snd_soc_update_bits(codec, NAU8822_REG_LHP_VOLUME, 0x40, 0x0);
		snd_soc_update_bits(codec, NAU8822_REG_RHP_VOLUME, 0x40, 0x0);

		snd_soc_update_bits(codec, NAU8822_REG_POWER_MANAGEMENT_3, 0x60, 0x0);
		snd_soc_update_bits(codec, NAU8822_REG_LSPKOUT_VOLUME, 0x40, 0x40);
		snd_soc_update_bits(codec, NAU8822_REG_RSPKOUT_VOLUME, 0x40, 0x40);
	}
	return !level;
}

static int nau88c22_hw_params(struct snd_pcm_substream *substream,
				struct snd_pcm_hw_params *params)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_dai *codec_dai = rtd->codec_dai;
	unsigned int freq = params_rate(params) * 256;	/* 48K * 256 = 12.288 Mhz */
	unsigned int fmt  = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
						SND_SOC_DAIFMT_CBS_CFS;
	int ret = 0;
#if 1
//MCLK
	ret = snd_soc_dai_set_sysclk(codec_dai, NAU8822_CLK_MCLK, PLARFORM_CLK_32K_256, SND_SOC_CLOCK_IN);
	if (ret < 0 )
		pr_debug("%s: failed to set codec sysclk: %d\n", __func__, ret);
#else
//PLL
	ret = snd_soc_dai_set_sysclk(codec_dai, NAU8822_CLK_PLL, PLARFORM_CLK_32K_256, SND_SOC_CLOCK_IN);
	if (ret < 0 )
		pr_debug("%s: failed to set codec sysclk: %d\n", __func__, ret);
	ret = snd_soc_dai_set_pll(codec_dai, 0, 0, PLARFORM_CLK_32K_256, freq);
	if (ret < 0 )
		pr_debug("%s: failed to set codec pll: %d\n", __func__, ret);
#endif

	ret = snd_soc_dai_set_fmt(codec_dai, fmt);
	if (0 > ret)
		return ret;

	return ret;
}

static int nau88c22_startup(struct snd_pcm_substream *substream)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_codec *codec = rtd->codec;
	int stream = substream->stream;
	int jack = jack_gpio.gpio;
	int invert = jack_gpio.invert;
	int level = gpio_get_value_cansleep(jack);

	pr_debug("%s\n", __func__);


	if(invert)
		level = !level;

	if (!level) {
		pr_debug("AMP ON\n");

#ifndef CONFIG_PLAT_NXP4330_SANTIAGO	/* temporary */
		gpio_direction_output(AUDIO_AMP_POWER, 1);
#endif
	}
	//jack_report_enable=1;

	nau88c22_jack_status_check();
	return 0;
}

static void nau88c22_shutdown(struct snd_pcm_substream *substream)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_codec *codec = rtd->codec;
	int stream = substream->stream;


    if (stream == SNDRV_PCM_STREAM_PLAYBACK)
{
		//printk("AMP OFF\n");
		#if 0
		/***************************************/
		// jimmy@zhongwei, 20140609 Testing
		/***************************************/
		switch_set_state(&switch_nxl_jack_detection, 0); //  1->Jack In
		#endif
#ifndef CONFIG_PLAT_NXP4330_SANTIAGO	/* temporary */
		gpio_direction_output(AUDIO_AMP_POWER, 0);
#endif
}
}

static int nau88c22_suspend_pre(struct snd_soc_card *card)
{
	struct snd_soc_codec *codec = nau88c22;

	return 0;
}

static int nau88c22_resume_pre(struct snd_soc_card *card)
{
	struct snd_soc_codec *codec = nau88c22;
	PM_DBGOUT("%s BAIAS=%d\n", __func__, codec->dapm.bias_level);
	codec_bias_level = codec->dapm.bias_level;
	return 0;
}

static int nau88c22_resume_post(struct snd_soc_card *card)
{
	struct snd_soc_codec *codec = nau88c22;
	PM_DBGOUT("%s BAIAS=%d\n", __func__, codec->dapm.bias_level);

	if (SND_SOC_BIAS_OFF != codec_bias_level)
		codec->driver->resume(codec);

	nau88c22_jack_status_check();
	return 0;
}



static int nau88c22_dai_init(struct snd_soc_pcm_runtime *rtd)
{
	struct snd_soc_codec *codec = rtd->codec;
	struct snd_soc_jack_gpio *jack = &jack_gpio;
	int ret;

	pr_debug("%s: %s\n", __func__, jack->name);

	nau88c22 = codec;

	if (NULL == jack->name)
		return 0;

	ret = snd_soc_jack_new(codec, "Headphone Jack", SND_JACK_HEADPHONE, &hp_jack);
	if (ret)
		return ret;

	ret = snd_soc_jack_add_gpios(&hp_jack, 1, jack);
	printk("%s: %s register audio jack detect, %d\n", ret?"Fail":"Done", __func__, jack->gpio);

	return 0;
}

static struct snd_soc_ops nau88c22_ops = {
	.hw_params 	= nau88c22_hw_params,
	.startup	= nau88c22_startup,
	.shutdown	= nau88c22_shutdown,
};

static char str_dai_name[16] = DEV_NAME_I2S;

static struct snd_soc_dai_link nau88c22_dai_link = {
	.name 			= "ASOC-NAU88C22",
	.stream_name 	= "nau88c22 HiFi",
	.cpu_dai_name 	= str_dai_name,			/* nxp_snd_i2s_driver name */
	.platform_name  = DEV_NAME_PCM,			/* nxp_snd_pcm_driver name */
	.codec_dai_name = "nau88c22-hifi",		/* nau88c22_dai's name */
	.codec_name 	= "nau88c22.0-001a",		/* nau88c22_i2c_driver name + '.' + bus + '-' + address(7bit) */
	.ops 			= &nau88c22_ops,
	.symmetric_rates = 1,
	.init			= nau88c22_dai_init,
	.ops 			= &nau88c22_ops,
};

static struct snd_soc_card nau88c22_card = {
	.name 			= "I2S-nau88c22",		/* proc/asound/cards */
	.owner 			= THIS_MODULE,
	.dai_link 		= &nau88c22_dai_link,
	.num_links 		= 1,
	.suspend_pre	= &nau88c22_suspend_pre,
	.resume_pre		= &nau88c22_resume_pre,
	.resume_post	= &nau88c22_resume_post,
};

/*
 * sysfs interface
 */
#if 1
/*TODO This sys interface will set mute variable,
which is used in codec file to mute/unmute the audio
struct tc94b26_private is defined in codec header file.
Assuming that is_board_lucy() is declared and defined in customer's platform.
*/
static ssize_t show_force_audio(struct device *dev,
		struct device_attribute *attr, char *buf)
{
#if 0
	struct alc5621_private *nxp_alc5621;

	nxp_alc5621 = i2c_get_clientdata(nau88c22_card.rtd->codec->control_data);

	return(sprintf(buf,"%u\n", nxp_alc5621->mute));
#endif
}

static ssize_t set_force_audio(struct device *dev,
                struct device_attribute *attr, const char *buf, size_t count)
{
#if 0
	unsigned int value;
	struct alc5621_private *nxp_alc5621;

	nxp_alc5621 = i2c_get_clientdata(nau88c22_card.rtd->codec->control_data);

	if (sscanf(buf, "%x", &value) != 1)
		return -EINVAL;

	nxp_alc5621->mute = value;
#endif
	return count;

}

#endif

static DEVICE_ATTR(force_audio, S_IRUSR|S_IRGRP|S_IROTH|S_IWUSR|S_IWGRP|S_IWOTH,
        show_force_audio, set_force_audio);


static struct attribute *nxp_alc5621_attributes[] = {
        &dev_attr_force_audio.attr,
        NULL
};

static struct attribute_group nxp_alc5621_attr_group = {
	.attrs = nxp_alc5621_attributes
};



/*
 * codec driver
 */
static int nau88c22_probe(struct platform_device *pdev)
{
	struct nxp_snd_dai_plat_data *plat = pdev->dev.platform_data;
	struct snd_soc_card *card = &nau88c22_card;
	struct snd_soc_jack_gpio *jack = &jack_gpio;
	struct nxp_snd_jack_pin *hpin = NULL;
	unsigned int rates = 0, format = 0;
	int ret;

	if (plat) {
		rates = plat->sample_rate;
		format = plat->pcm_format;
		hpin = &plat->hp_jack;
		if (hpin->support) {
			jack->gpio = hpin->detect_io;
			jack->invert = hpin->detect_level ?  false : true;
			jack->debounce_time = hpin->debounce_time ? : 200;
		} else {
			jack->name = NULL;
		}
		sprintf(str_dai_name, "%s.%d", DEV_NAME_I2S, plat->i2s_ch);	// set I2S name
	}
#ifndef CONFIG_PLAT_NXP4330_SANTIAGO	/* temporary */
    gpio_request(AUDIO_AMP_POWER, "nau88c22");
#endif
	/*
	 * register card
	 */
	card->dev = &pdev->dev;
	ret = snd_soc_register_card(card);
	if (ret) {
		dev_err(&pdev->dev, "snd_soc_register_card() failed: %d\n", ret);
		return ret;
	}

	if (card->rtd->cpu_dai) {
		struct snd_soc_dai *cpu_dai = card->rtd->cpu_dai;
		struct snd_soc_dai_driver *i2s = cpu_dai->driver;
		if (rates) {
			rates = snd_pcm_rate_to_rate_bit(rates);
			if (SNDRV_PCM_RATE_KNOT == rates)
				printk("%s, invalid sample rates=%d\n", __func__, plat->sample_rate);
			else {
				i2s->playback.rates = rates;
				i2s->capture.rates = rates;
			}
		}
		if (format) {
			i2s->playback.formats = format;
			i2s->capture.formats = format;
		}
	}

	ret = sysfs_create_group(&pdev->dev.kobj, &nxp_alc5621_attr_group);

	printk("nau88c22-dai: register card %s -> %s ret = %d rate=%d\n",
		card->dai_link->codec_dai_name, card->dai_link->cpu_dai_name,ret,rates);
	return 0;
}

static int nau88c22_remove(struct platform_device *pdev)
{
	struct snd_soc_card *card = platform_get_drvdata(pdev);
	pr_debug("%s\n", __func__);
	snd_soc_unregister_card(card);
#ifndef CONFIG_PLAT_NXP4330_SANTIAGO	/* temporary */
	gpio_free(AUDIO_AMP_POWER);
#endif
	return 0;
}

static struct platform_driver nau88c22_driver = {
	.driver		= {
		.name	= "nau88c22-audio",
		.owner	= THIS_MODULE,
		.pm 	= &snd_soc_pm_ops,	/* for suspend */
	},
	.probe		= nau88c22_probe,
	.remove		= __devexit_p(nau88c22_remove),
};
static int __init nxp_nau88c22_audio_init(void)
{
	printk(KERN_DEBUG "%s: \n", __FUNCTION__);
	return platform_driver_register(&nau88c22_driver);
}
module_init(nxp_nau88c22_audio_init);

static void __exit nxp_nau88c22_audio_exit(void)
{
	printk(KERN_DEBUG "%s: \n", __FUNCTION__);
	platform_driver_unregister(&nau88c22_driver);
}
module_exit(nxp_nau88c22_audio_exit);

MODULE_AUTHOR("allan park <allan.park@nexell.co.kr>");
MODULE_DESCRIPTION("Sound codec-nau88c22 driver for the Nexell");
MODULE_LICENSE("GPL");


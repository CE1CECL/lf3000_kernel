/*
 * drivers/video/backlight/lf2000_bl.c
 *
 * PWM backlight support for the LF2000 LeapFrog boards.
 *
 * Copyright 2012 LeapFrog Enterprises Inc.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation.
 */

#include <linux/init.h>
#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/platform_device.h>
#include <linux/fb.h>
#include <linux/backlight.h>

#include <mach/platform.h>
#include <mach/pwm.h>
#include <mach/gpio.h>
#include <mach/lfp100.h>
#include <mach/devices.h>
#include <mach/tc7734.h>

#if defined(CONFIG_PLAT_NXP4330_SANTIAGO)
#include <asm/system.h>
#include <mach/board_revisions.h>
#include <mach/soc.h>
#endif

#define LF2000_NO_BRIGHTNESS		 -1	// brightness not set
#define LF2000_INITIAL_BRIGHTNESS	318	// nominal second brightest
#define LF2000_MAX_BRIGHTNESS		511

struct lf2000_bl {
	struct platform_device	*pdev;
	struct backlight_device *bl;
	u32			pwmds;
	u32			pwm_channel;
};

/* convert 9 bit intensity range to 5 bit WLED range */
#define LFP100_WLED_ENTRIES	32
static int intensity_to_lfp100_wled[LFP100_WLED_ENTRIES] = {
	 13,  25,  38,  50,  63,  76,  88, 101,
	114, 126, 139, 151, 165, 182, 199, 217,
	234, 245, 255, 266, 276, 287, 297, 308,
	319, 345, 373, 401, 428, 456, 484, 512 };

/* convert 9 bit intensity range to 5 bit WLED range */
/* FIXME these values need to be calibrated for TC7734. */
/* FIXME backlight driver should have everything in lumens, individual drivers should convert it to register settings. */
#define TC7734_WLED_ENTRIES	32
static int intensity_to_tc7734_wled[TC7734_WLED_ENTRIES] = {
	 13,  25,  38,  50,  63,  76,  88, 101,
	114, 126, 139, 151, 165, 182, 199, 217,
	234, 245, 255, 266, 276, 287, 297, 308,
	319, 345, 373, 401, 428, 456, 484, 512 };

static int lf2000_intensity_to_wled(int intensity)
{
	int i;

#ifdef CONFIG_SOC_LFP100
	if (lfp100_have_lfp100()) {
		for (i = 0; i < LFP100_WLED_ENTRIES; i++) {
			if (intensity < intensity_to_lfp100_wled[i])
				break;
		}
		if (i < LFP100_WLED_ENTRIES)
			return i;
		/* entry not found, at max */
		return LFP100_WLED_ENTRIES - 1;
	}
#endif

#ifdef CONFIG_TC7734_PMIC
	if (tc7734_have_tc7734()) {
		for (i = 0; i < TC7734_WLED_ENTRIES; i++) {
				if (intensity < intensity_to_tc7734_wled[i])
					break;
			}
			if (i < TC7734_WLED_ENTRIES)
				return i;
			/* entry not found, at max */
			return TC7734_WLED_ENTRIES - 1;
	}
#endif
}


static int lf2000_bl_get_brightness(struct backlight_device *bd)
{
	struct lf2000_bl *priv = bl_get_data(bd);

	return priv->pwmds;
}

static int lf2000_bl_set_brightness(struct backlight_device *bd)
{
	struct lf2000_bl *priv = bl_get_data(bd);
	int intensity;

#if 0
	if (bd->props.power != FB_BLANK_UNBLANK)
		intensity = 0;
	if (bd->props.fb_blank != FB_BLANK_UNBLANK)
		intensity = 0;
#endif

	if (bd->props.brightness == LF2000_NO_BRIGHTNESS) {

#if defined(CONFIG_PLAT_NXP4330_SANTIAGO)
		switch (system_rev) {
		case LF3000_BOARD_SANTIAGO:
		#ifdef CONFIG_TC7734_PMIC
			if (tc7734_have_tc7734()) {
				priv->bl->props.brightness =
					intensity_to_tc7734_wled[(tc7734_read_reg(TC7734_DDIM)&TC7734_BACKLIGHT_CONFIG_MASK)] - 1; //only read bits 4:0, bit 7 is phase select for TC7734.
			} else {
				priv->bl->props.brightness = LF2000_INITIAL_BRIGHTNESS;
			}
		#endif
	    break;

		case LF3000_BOARD_SANTIAGO_REV1:
		#ifdef CONFIG_MFD_NXE2000
			/* TODO: FIXME: Add code to set PWM1's duty cycle to 0 */
			nxp_soc_pwm_set_frequency(1, 25000, 0);
		#endif
			break;
		}

#else	/* !defined(CONFIG_PLAT_NXP4330_SANTIAGO) */
#ifdef CONFIG_SOC_LFP100
	    if (lfp100_have_lfp100()) {
	        priv->bl->props.brightness = 
	            intensity_to_lfp100_wled[lfp100_read_reg(LFP100_WLED)] - 1; 
	    }
#endif

#ifdef CONFIG_TC7734_PMIC
	    if (tc7734_have_tc7734()) {
			priv->bl->props.brightness =
				intensity_to_tc7734_wled[(tc7734_read_reg(TC7734_DDIM)&TC7734_BACKLIGHT_CONFIG_MASK)] - 1; //only read bits 4:0, bit 7 is phase select for TC7734.
	    } else {
	        priv->bl->props.brightness = LF2000_INITIAL_BRIGHTNESS;
	    }
#endif
#endif	/* CONFIG_PLAT_NXP4330_SANTIAGO */
	}

	intensity = bd->props.brightness;

#if defined(CONFIG_PLAT_NXP4330_SANTIAGO)

	switch (system_rev) {
	case LF3000_BOARD_SANTIAGO:
	#ifdef CONFIG_TC7734_PMIC
		if (tc7734_have_tc7734()) {
			tc7734_write_reg(TC7734_DDIM,
					(lf2000_intensity_to_wled(intensity)&TC7734_BACKLIGHT_CONFIG_MASK|TC7734_LEDD_PS));
		}
	#endif
    break;

	case LF3000_BOARD_SANTIAGO_REV1:
	#ifdef CONFIG_MFD_NXE2000
		nxp_soc_pwm_set_frequency(1, 25000, (100 * intensity)/511);
	#endif
		break;
	}

#else	/* !defined(CONFIG_PLAT_NXP4330_SANTIAGO) */

#ifdef CONFIG_SOC_LFP100
	if (lfp100_have_lfp100()) {
		lfp100_write_reg(LFP100_WLED, 
			lf2000_intensity_to_wled(intensity));
	}
#endif

#ifdef CONFIG_TC7734_PMIC
	if (tc7734_have_tc7734()) {
		tc7734_write_reg(TC7734_DDIM,
				(lf2000_intensity_to_wled(intensity)&TC7734_BACKLIGHT_CONFIG_MASK|TC7734_LEDD_PS));
	}
#endif

#ifdef CONFIG_ARCH_LF1000
	else {
		if (pwm_set_duty_cycle(priv->pwm_channel, intensity))
			return -EINVAL;

		priv->pwmds = intensity;
	}
#endif
#endif	/* CONFIG_PLAT_NXP4330_SANTIAGO */

	return 0;
}



#if defined(CONFIG_PLAT_NXP4330_SANTIAGO)
#include <linux/pwm.h>
#include <linux/pwm_backlight.h>
		  struct pwm_bl_data {
		  	struct pwm_device	*pwm;
		  	struct device		*dev;
		  	unsigned int		period;
		  	unsigned int		lth_brightness;
		  	int			(*notify)(struct device *,
		  					  int brightness);
		  	void			(*notify_after)(struct device *,
		  					int brightness);
		  	int			(*check_fb)(struct device *, struct fb_info *);
		  };

		  static int pwm_backlight_update_status(struct backlight_device *bl)
		  {
		  	struct pwm_bl_data *pb = dev_get_drvdata(&bl->dev);
		  	int brightness = bl->props.brightness;
		  	int max = bl->props.max_brightness;
		#if 0
		  	if (bl->props.power != FB_BLANK_UNBLANK)
		  		brightness = 0;

		  	if (bl->props.fb_blank != FB_BLANK_UNBLANK)
		  		brightness = 0;
		#endif
		  	if (pb->notify)
		  		brightness = pb->notify(pb->dev, brightness);

		  	if (brightness == 0) {
		  		pwm_config(pb->pwm, 0, pb->period);
		  		pwm_disable(pb->pwm);
		  	} else {
		  		brightness = pb->lth_brightness +
		  			(brightness * (pb->period - pb->lth_brightness) / max);
		  		pwm_config(pb->pwm, brightness, pb->period);
		  		pwm_enable(pb->pwm);
		  	}

		  	if (pb->notify_after)
		  		pb->notify_after(pb->dev, brightness);

		  	return 0;
		  }

static int pwm_backlight_get_brightness(struct backlight_device *bl)
{
	return bl->props.brightness;
}

static int pwm_backlight_check_fb(struct backlight_device *bl,
				  struct fb_info *info)
{
	struct pwm_bl_data *pb = dev_get_drvdata(&bl->dev);

	return !pb->check_fb || pb->check_fb(pb->dev, info);
}

static const struct backlight_ops pwm_backlight_ops = {
	.update_status	= pwm_backlight_update_status,
	.get_brightness	= pwm_backlight_get_brightness,
	.check_fb	= pwm_backlight_check_fb,
};
#endif /*defined(CONFIG_PLAT_NXP4330_SANTIAGO) */


static struct backlight_ops lf2000_bl_ops = {
	.get_brightness	= lf2000_bl_get_brightness,
	.update_status	= lf2000_bl_set_brightness,
};


static int lf2000_bl_probe(struct platform_device *pdev)
{
	int ret;
	struct backlight_properties props;

	dev_info(&pdev->dev, "%s\n", __FUNCTION__);
#if defined(CONFIG_PLAT_NXP4330_SANTIAGO)

	switch (system_rev) {
	case LF3000_BOARD_SANTIAGO:
	{
		struct lf2000_bl *priv;

		priv = kzalloc(sizeof(struct lf2000_bl), GFP_KERNEL);
		if (!priv) {
			dev_err(&pdev->dev, "can't allocate priv data\n");
			return -ENOMEM;
		}
		priv->pdev = pdev;

		memset(&props, 0, sizeof(struct backlight_properties));
		props.type = BACKLIGHT_FIRMWARE;
		props.max_brightness = LF2000_MAX_BRIGHTNESS;

		priv->bl = backlight_device_register("lf2000-pwm-bl",
				&pdev->dev, priv, &lf2000_bl_ops, &props);
		if (IS_ERR(priv->bl)) {
			ret = PTR_ERR(priv->bl);
			dev_err(&pdev->dev, "failed to register backlight: %d\n", ret);
			kfree(priv);
			return ret;
		}

		platform_set_drvdata(pdev, priv);

		priv->bl->props.power = FB_BLANK_UNBLANK;

		/* ideally we would have read the LFP100 brightness
		 * set in U-BOOT, but  the LFP100 driver might not
		 * be loaded yet; so delay setting the backlight value
		 */

		priv->bl->props.brightness = LF2000_NO_BRIGHTNESS;

		/* removed -- leave brightness at U-Boot setting at startup */
	#if 0
		lf2000_bl_set_brightness(priv->bl);
		backlight_update_status(priv->bl);
	#endif
	}
    break;

	case LF3000_BOARD_SANTIAGO_REV1:
	  {	/* code from drivers/video/backlight/pwm_bl.c's pwm_backlight_probe() */
		struct platform_pwm_backlight_data *data = pdev->dev.platform_data;
		struct backlight_device *bl;
		struct pwm_bl_data *pb;

		if (!data) {
			dev_err(&pdev->dev, "failed to find platform data\n");
			return -EINVAL;
		}

		if (data->init) {
			ret = data->init(&pdev->dev);
			if (ret < 0)
				return ret;
		}

		pb = devm_kzalloc(&pdev->dev, sizeof(*pb), GFP_KERNEL);
		if (!pb) {
			dev_err(&pdev->dev, "no memory for state\n");
			ret = -ENOMEM;
			//goto err_alloc;
			if (data->exit)
				data->exit(&pdev->dev);
			return ret;
		}

		pb->period = data->pwm_period_ns;
		pb->notify = data->notify;
		pb->notify_after = data->notify_after;
		pb->check_fb = data->check_fb;
		pb->lth_brightness = data->lth_brightness *
			(data->pwm_period_ns / data->max_brightness);
		pb->dev = &pdev->dev;

		pb->pwm = pwm_request(data->pwm_id, "backlight");
		if (IS_ERR(pb->pwm)) {
			dev_err(&pdev->dev, "unable to request PWM for backlight\n");
			ret = PTR_ERR(pb->pwm);
			//goto err_alloc;
			if (data->exit)
				data->exit(&pdev->dev);
			return ret;
		} else
			dev_dbg(&pdev->dev, "got pwm for backlight\n");

		memset(&props, 0, sizeof(struct backlight_properties));
		props.type = BACKLIGHT_RAW;
		props.max_brightness = data->max_brightness;
		bl = backlight_device_register(dev_name(&pdev->dev), &pdev->dev, pb,
					       &pwm_backlight_ops, &props);
		if (IS_ERR(bl)) {
			dev_err(&pdev->dev, "failed to register backlight\n");
			ret = PTR_ERR(bl);
			//goto err_bl;
			pwm_free(pb->pwm);
			if (data->exit)
				data->exit(&pdev->dev);
			return ret;
		}

		bl->props.brightness = data->dft_brightness;
		backlight_update_status(bl);

		platform_set_drvdata(pdev, bl);
	  }
		break;
	}

#else	/* !defined(CONFIG_PLAT_NXP4330_SANTIAGO) */
	struct lf2000_bl *priv;
	u8 polarity;


	priv = kzalloc(sizeof(struct lf2000_bl), GFP_KERNEL);
	if (!priv) {
		dev_err(&pdev->dev, "can't allocate priv data\n");
		return -ENOMEM;
	}
	priv->pdev = pdev;

	memset(&props, 0, sizeof(struct backlight_properties));
	props.type = BACKLIGHT_FIRMWARE;
	props.max_brightness = LF2000_MAX_BRIGHTNESS;

	priv->bl = backlight_device_register("lf2000-pwm-bl",
			&pdev->dev, priv, &lf2000_bl_ops, &props);
	if (IS_ERR(priv->bl)) {
		ret = PTR_ERR(priv->bl);
		dev_err(&pdev->dev, "failed to register backlight: %d\n", ret);
		kfree(priv);
		return ret;
	}

	platform_set_drvdata(pdev, priv);

	priv->bl->props.power = FB_BLANK_UNBLANK;

	/* idealy we would have read the LFP100 brightness
	 * set in U-BOOT, but  the LFP100 driver might not
	 * be loaded yet; so delay setting the backlight value
	 */
 
	priv->bl->props.brightness = LF2000_NO_BRIGHTNESS;

#ifdef CONFIG_ARCH_LF1000
	if (gpio_have_gpio_madrid()) {
		priv->pwm_channel = PWM_CHAN2;
		polarity = POL_INV;	/* inverted PWM polarity */
	} else {
		priv->pwm_channel = PWM_CHAN1;
		//On Explorer, pin A30 (PWM0) is LED_ENA and should be on
		//The bootloader does this, but can't hurt to do it here to be safe.
		polarity = POL_BYP;	/* normal PWM polarity */
		gpio_set_out_en(lf1000_l2p_port(LED_ENA),
			lf1000_l2p_pin(LED_ENA), 1);
		gpio_set_cur(lf1000_l2p_port(LED_ENA),
			lf1000_l2p_pin(LED_ENA), GPIO_CURRENT_8MA);
	}
	dev_info(&pdev->dev, "Using PWM Channel %d for backlight\n", priv->pwm_channel);
	
	ret = pwm_get_clock_rate();
	if (ret < 1) {
		dev_err(&pdev->dev, "can't get PWM rate\n");
		priv->pwmds = 0;
	} else {
		dev_info(&pdev->dev, "PWM rate is %d\n", ret);
		pwm_configure_pin(priv->pwm_channel);
		pwm_set_prescale(priv->pwm_channel, 1);
		pwm_set_period(priv->pwm_channel, 511);
		pwm_set_polarity(priv->pwm_channel, polarity);
	}
#endif

	/* removed -- leave brightness at U-Boot setting at startup */
#if 0
	lf2000_bl_set_brightness(priv->bl);
	backlight_update_status(priv->bl);
#endif

#endif		/* !defined(CONFIG_PLAT_NXP4330_SANTIAGO) */
	return 0;
}

static int __exit lf2000_bl_remove(struct platform_device *pdev)
{
	struct lf2000_bl *priv = platform_get_drvdata(pdev);

	backlight_device_unregister(priv->bl);
	platform_set_drvdata(pdev, NULL);
	kfree(priv);

	return 0;
}

#if defined(CONFIG_PLAT_NXP4330_SANTIAGO) && defined(CONFIG_PM)
static int pwm_backlight_suspend(struct device *dev)
{
	switch (system_rev) {
	case LF3000_BOARD_SANTIAGO:
		break;

	default:
	case LF3000_BOARD_SANTIAGO_REV1:
	  {
		struct backlight_device *bl = dev_get_drvdata(dev);
		struct pwm_bl_data *pb = dev_get_drvdata(&bl->dev);

		if (pb->notify)
			pb->notify(pb->dev, 0);
		pwm_config(pb->pwm, 0, pb->period);
		pwm_disable(pb->pwm);
		if (pb->notify_after)
			pb->notify_after(pb->dev, 0);
	  }
	  break;
	}
	return 0;
}

static int pwm_backlight_resume(struct device *dev)
{
	switch (system_rev) {
	case LF3000_BOARD_SANTIAGO:
		break;

	default:
	case LF3000_BOARD_SANTIAGO_REV1:
	  {
		struct backlight_device *bl = dev_get_drvdata(dev);

		backlight_update_status(bl);
	  }
	  break;
	}
	return 0;
}

static SIMPLE_DEV_PM_OPS(pwm_backlight_pm_ops, pwm_backlight_suspend,
			 pwm_backlight_resume);

#endif


static struct platform_driver lf2000_bl_driver = {
	.probe	= lf2000_bl_probe,
	.remove	= __exit_p(lf2000_bl_remove),
	.driver = {
		.name	= DEV_NAME_LF_BL,
		.owner	= THIS_MODULE,
#if defined(CONFIG_PLAT_NXP4330_SANTIAGO) && defined(CONFIG_PM)
		.pm	= &pwm_backlight_pm_ops,
#endif
	},
};

static int __init lf2000_bl_init(void)
{
	return platform_driver_register(&lf2000_bl_driver);
}

static void __exit lf2000_bl_exit(void)
{
	platform_driver_unregister(&lf2000_bl_driver);
}

module_init(lf2000_bl_init);
module_exit(lf2000_bl_exit);

MODULE_AUTHOR("Daniel Lazzari");
MODULE_DESCRIPTION("LF2000 backlight driver");
MODULE_LICENSE("GPL");
MODULE_ALIAS("platform:lf2000-bl");

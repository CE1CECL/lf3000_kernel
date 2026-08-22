/* hwmon-lf1000.c
 *
 * Power and Battery monitoring.  This driver provides battery and external
 * power information, as well as an input device for the Power button.
 * 
 * Scott Esters <sesters@leapfrog.com>
 *
 * Copyright 2008 LeapFrog Enterprises Inc.
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
 * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 */

#include <linux/init.h>
#include <linux/module.h>
#include <linux/types.h>
#include <linux/ioport.h>
#include <linux/kernel.h>
#include <linux/device.h>
#include <linux/platform_device.h>
#include <linux/err.h>
#include <linux/sysfs.h>
#include <linux/fs.h>
#include <linux/timer.h>
#include <linux/jiffies.h>
#include <linux/workqueue.h>
#include <linux/cdev.h>
#include <linux/delay.h>
#include <linux/i2c.h>
#include <linux/input.h>
#include <linux/slab.h>
#include <linux/gpio.h>
#include <linux/lf3000/gpio.h>
#include <linux/interrupt.h>

#include <mach/platform.h>
#include <mach/power.h>
#include <mach/lfp100.h>
#include <mach/tc7734.h>
#include <mach/adc.h>
#include <mach/soc.h>
#include <mach/bq24250-charger.h>

#ifdef CONFIG_ARCH_LF1000
#include <mach/adc.h>
#include <mach/gpio.h>
#include <mach/gpio_hal.h>
#include <mach/common.h>
#include <mach/clkpwr.h>
#endif

#include <asm/io.h>
#include <asm/uaccess.h>
#include <asm/system_info.h>

/* FIXME */
#include "../../arch/arm/mach-nxp4330/board_revisions.h"

#include "../../arch/arm/mach-nxp4330/prototype/module/nx_alive.h"

/*
 * power hardware
 */

enum glasgow_power_chip {
	UNDEFINED = 0,
	LF1000 = 1,	/* uses LF1000 power toggle input pin */
	LFP100 = 2,	/* using LFP100 power management chip */
	TC7734 = 3,
};

/*
 * configuration
 */

#define POWER_BUTTON_SAMPLING_J	(HZ/4)

#define SHUTDOWN_SECS	4
/* power down system after SHUTDOWN_SECS */
#define POWER_BUTTON_COUNT  ((HZ * SHUTDOWN_SECS) / POWER_BUTTON_SAMPLING_J)

/* platform device data */
struct glasgow_hwmon {
	enum lf1000_power_status status;	/* board status	*/
	unsigned int max_battery_mv;		/* max battery, above is Ext */
	unsigned int normal_battery_mv;		/* hysterisis low -> normal */
	unsigned int low_battery_mv;		/* low battery level */
	unsigned int low_battery_repeat_mv;	/* low battery repeat delta */
	unsigned int critical_battery_mv;	/* critical battery level */

	unsigned int adc_slope_256;		/* mx part of line	*/
	unsigned int adc_constant;		/* constant part of line */

	int supply_mv;				/* power supply, in mV */
	int low_battery_reported_mv;		/* low battery reported,in mV */
	unsigned on_battery :1;			/* running on battery */
	unsigned shutdown : 1;			/* shutdown requested */
	unsigned usb_charger_changed : 1;	/* USB charger detect pin changed */
	unsigned request_battery_report;	/* report battery status changes */

	struct platform_device *pdev;

	struct work_struct battery_work;	/* monitor power */
	struct workqueue_struct *battery_tasks;
	struct timer_list battery_timer;

	struct work_struct power_button_work;	/* monitor power button*/
	struct workqueue_struct *power_button_tasks;
	struct timer_list power_button_timer;

	int	power_button_count;		/* count power button calls */

	enum	glasgow_power_chip chip;		/* support LF1000 / LFP100 / TC7734 */

	/* input device interface */
	unsigned char buttons[7];		/* one slot for each state */
	struct input_dev *input;
};

static struct glasgow_hwmon *hwmon_dev = NULL;

/*
 * sysfs Interface
 */

/* report whether shutdown was requested */
static ssize_t show_shutdown(struct device *dev, struct device_attribute *attr,
				char *buf)
{
	struct glasgow_hwmon *priv = (struct glasgow_hwmon *)dev_get_drvdata(dev);

	return sprintf(buf, "%d\n", priv->shutdown);
}
static DEVICE_ATTR(shutdown, S_IRUSR|S_IRGRP|S_IROTH, show_shutdown, NULL);

#ifndef CONFIG_PLAT_NXP4330_GLASGOW_ALPHA
/* report current battery voltage, in mV */
static ssize_t show_voltage(struct device *dev, struct device_attribute *attr,
				char *buf)
{
	struct glasgow_hwmon *priv = (struct glasgow_hwmon *)dev_get_drvdata(dev);

	return sprintf(buf, "%d\n", priv->supply_mv);
}
static DEVICE_ATTR(voltage, S_IRUSR|S_IRGRP|S_IROTH, show_voltage, NULL);

/* low battery reported voltage, in mV */
static ssize_t show_low_battery_reported_voltage(struct device *dev,
			struct device_attribute *attr, char *buf)
{
	struct glasgow_hwmon *priv = (struct glasgow_hwmon *)dev_get_drvdata(dev);

	return sprintf(buf, "%d\n", priv->low_battery_reported_mv);
}
static DEVICE_ATTR(low_battery_reported_voltage, S_IRUSR|S_IRGRP|S_IROTH,
			show_low_battery_reported_voltage, NULL);

/* report state of external power (1 = on external, 0 = on battery) */
static ssize_t show_external(struct device *dev, struct device_attribute *attr,
				char *buf)
{
	struct glasgow_hwmon *priv = (struct glasgow_hwmon *)dev_get_drvdata(dev);
	enum lf1000_power_source power_source;
	power_source = glasgow_get_power_source(priv->on_battery);

	return sprintf(buf, "%d\n", (power_source == 5) ? 0 : 1);
}
static DEVICE_ATTR(external, S_IRUSR|S_IRGRP|S_IROTH, show_external, NULL);

/* report power status as a number */
static ssize_t show_status(struct device *dev, struct device_attribute *attr,
				char *buf)
{
	struct glasgow_hwmon *priv = (struct glasgow_hwmon *)dev_get_drvdata(dev);

	return sprintf(buf, "%d\n", priv->status);
}
static DEVICE_ATTR(status, S_IRUSR|S_IRGRP|S_IROTH, show_status, NULL);

static ssize_t show_max_battery_mv(struct device *pdev,
				struct device_attribute *attr, char *buf)
{
	struct glasgow_hwmon *priv = (struct glasgow_hwmon *)dev_get_drvdata(pdev);

	return sprintf(buf, "%d\n", priv->max_battery_mv);
}

static ssize_t set_max_battery_mv(struct device *pdev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	int temp;
	struct glasgow_hwmon *priv = (struct glasgow_hwmon *)dev_get_drvdata(pdev);

	if (sscanf(buf, "%d", &temp) != 1)
		return -EINVAL;
	if (temp < 0 || temp > 16384)
		return -EINVAL;
	priv->max_battery_mv = temp;
	return(count);
}

static DEVICE_ATTR(max_battery_mv, S_IRUSR|S_IWUSR|S_IRGRP|S_IWGRP|S_IROTH|S_IWOTH,
		show_max_battery_mv, set_max_battery_mv);

static ssize_t show_normal_battery_mv(struct device *pdev,
				struct device_attribute *attr, char *buf)
{
	struct glasgow_hwmon *priv = (struct glasgow_hwmon *)dev_get_drvdata(pdev);

	return sprintf(buf, "%d\n", priv->normal_battery_mv);
}

static ssize_t set_normal_battery_mv(struct device *pdev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	int temp;
	struct glasgow_hwmon *priv = (struct glasgow_hwmon *)dev_get_drvdata(pdev);

	if (sscanf(buf, "%d", &temp) != 1)
		return -EINVAL;
	if (temp < 0 || temp > 16384)
		return -EINVAL;
	priv->normal_battery_mv = temp;
	return(count);
}

static DEVICE_ATTR(normal_battery_mv, S_IRUSR|S_IWUSR|S_IRGRP|S_IWGRP|S_IROTH|S_IWOTH,
		show_normal_battery_mv, set_normal_battery_mv);

static ssize_t show_low_battery_mv(struct device *pdev,
				struct device_attribute *attr, char *buf)
{
	struct glasgow_hwmon *priv = (struct glasgow_hwmon *)dev_get_drvdata(pdev);

	return sprintf(buf, "%d\n", priv->low_battery_mv);
}

static ssize_t set_low_battery_mv(struct device *pdev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	int temp;
	struct glasgow_hwmon *priv = (struct glasgow_hwmon *)dev_get_drvdata(pdev);

	if (sscanf(buf, "%d", &temp) != 1)
		return -EINVAL;
	if (temp < 0 || temp > 16384)
		return -EINVAL;
	priv->low_battery_mv = temp;
	return(count);
}

static DEVICE_ATTR(low_battery_mv, S_IRUSR|S_IWUSR|S_IRGRP|S_IWGRP|S_IROTH|S_IWOTH,
		show_low_battery_mv, set_low_battery_mv);


static ssize_t show_low_battery_repeat_mv(struct device *pdev,
				struct device_attribute *attr, char *buf)
{
	struct glasgow_hwmon *priv = (struct glasgow_hwmon *)dev_get_drvdata(pdev);

	return sprintf(buf, "%d\n", priv->low_battery_repeat_mv);
}

static ssize_t set_low_battery_repeat_mv(struct device *pdev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	int temp;
	struct glasgow_hwmon *priv = (struct glasgow_hwmon *)dev_get_drvdata(pdev);

	if (sscanf(buf, "%d", &temp) != 1)
		return -EINVAL;
	if (temp < 0 || temp > 16384)
		return -EINVAL;
	priv->low_battery_repeat_mv = temp;
	return(count);
}

static DEVICE_ATTR(low_battery_repeat_mv, S_IRUSR|S_IWUSR|S_IRGRP|S_IWGRP|S_IROTH|S_IWOTH,
		show_low_battery_repeat_mv, set_low_battery_repeat_mv);

static ssize_t show_critical_battery_mv(struct device *pdev,
				struct device_attribute *attr, char *buf)
{
	struct glasgow_hwmon *priv = (struct glasgow_hwmon *)dev_get_drvdata(pdev);

	return sprintf(buf, "%d\n", priv->critical_battery_mv);
}

static ssize_t set_critical_battery_mv(struct device *pdev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	int temp;
	struct glasgow_hwmon *priv = (struct glasgow_hwmon *)dev_get_drvdata(pdev);

	if (sscanf(buf, "%d", &temp) != 1)
		return -EINVAL;
	if (temp < 0 || temp > 16384)
		return -EINVAL;
	priv->critical_battery_mv = temp;
	return(count);
}

static DEVICE_ATTR(critical_battery_mv,
		S_IRUSR|S_IWUSR|S_IRGRP|S_IWGRP|S_IROTH|S_IWOTH,
		show_critical_battery_mv, set_critical_battery_mv);

static ssize_t show_adc_slope_256(struct device *pdev,
			      struct device_attribute *attr, char *buf)
{
	struct glasgow_hwmon *priv = (struct glasgow_hwmon *)dev_get_drvdata(pdev);

	return sprintf(buf, "%d\n", priv->adc_slope_256);
}

static ssize_t set_adc_slope_256(struct device *pdev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	int temp;
	struct glasgow_hwmon *priv = (struct glasgow_hwmon *)dev_get_drvdata(pdev);

	if (sscanf(buf, "%d", &temp) != 1)
		return -EINVAL;
	if (temp < -65536 || temp > 65535)
		return -EINVAL;
	priv->adc_slope_256 = temp;
	priv->request_battery_report = 1;	/* report battery status */
	return(count);
}

static DEVICE_ATTR(adc_slope_256, S_IRUSR|S_IWUSR|S_IRGRP|S_IWGRP|S_IROTH|S_IWOTH,
		show_adc_slope_256, set_adc_slope_256);

static ssize_t show_adc_constant(struct device *pdev,
				struct device_attribute *attr, char *buf)
{
	struct glasgow_hwmon *priv = (struct glasgow_hwmon *)dev_get_drvdata(pdev);

	return sprintf(buf, "%d\n", priv->adc_constant);
}

static ssize_t set_adc_constant(struct device *pdev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	int temp;
	struct glasgow_hwmon *priv = (struct glasgow_hwmon *)dev_get_drvdata(pdev);

	if (sscanf(buf, "%d", &temp) != 1)
		return -EINVAL;
	if (temp < -4096 || temp > 4095)
		return -EINVAL;
	priv->adc_constant = temp;
	priv->request_battery_report = 1;	/* report battery status */
	return(count);
}

static DEVICE_ATTR(adc_constant, S_IRUSR|S_IWUSR|S_IRGRP|S_IWGRP|S_IROTH|S_IWOTH,
		show_adc_constant, set_adc_constant);

static ssize_t show_power_source(struct device *pdev,
				struct device_attribute *attr, char *buf)
{
	struct glasgow_hwmon *priv = (struct glasgow_hwmon *)dev_get_drvdata(pdev);
	enum lf1000_power_source power_source;

	power_source = glasgow_get_power_source(priv->on_battery);

	switch (power_source) {
	case POWER_UNKNOWN:	  return sprintf(buf, "UNKNOWN\n");
	case POWER_OTHER:	  return sprintf(buf, "OTHER\n");
	case POWER_NIMH:	  return sprintf(buf, "NIMH\n");
	case POWER_NIMH_CHARGER:  return sprintf(buf, "NIMH_CHARGER\n");
	case POWER_NIMH_EXTERNAL: return sprintf(buf, "NIMH_EXTERNAL\n");
	case POWER_BATTERY:	  return sprintf(buf, "BATTERY\n");
	case POWER_EXTERNAL:	  return sprintf(buf, "EXTERNAL\n");
	default:	          return sprintf(buf, "default(%d)\n",
						power_source);
	}
}

static DEVICE_ATTR(power_source, S_IRUSR|S_IRGRP|S_IROTH,
		show_power_source, NULL);

#ifdef CONFIG_BQ24250_CHARGER
static ssize_t show_usb_charger_type(struct device *pdev,
                                struct device_attribute *attr, char *buf)
{
	unsigned int type;
	struct glasgow_hwmon *priv = (struct glasgow_hwmon *)dev_get_drvdata(pdev);

	type = get_usb_charger_type (priv->on_battery); 

        return scnprintf(buf, PAGE_SIZE, "%s\n", usb_type[type]);
}

static DEVICE_ATTR(usb_charger_type, S_IRUSR|S_IRGRP|S_IROTH,
                show_usb_charger_type, NULL);

static ssize_t show_charge_status(struct device *pdev,
                                struct device_attribute *attr, char *buf)
{       
        unsigned int status;
        status = bq24250_get_charging_status();
        
        return scnprintf(buf, PAGE_SIZE, "%s\n", charge_status[status]);
}       

static DEVICE_ATTR(charge_status, S_IRUSR|S_IRGRP|S_IROTH,
                show_charge_status, NULL);

static ssize_t show_charge_current(struct device *pdev,
                                struct device_attribute *attr, char *buf)
{
        int type;
        struct glasgow_hwmon *priv = (struct glasgow_hwmon *)dev_get_drvdata(pdev);

	type = get_usb_charger_type (priv->on_battery);
	switch(type) {
	case BQ24250_NONE_DETECTED:
		return scnprintf(buf, PAGE_SIZE, "0\n");
	case BQ24250_SDP_DETECTED:
		return scnprintf(buf, PAGE_SIZE, "500\n");
	case BQ24250_CDP_DCP_DETECTED:
		return scnprintf(buf, PAGE_SIZE, "1500\n");
	case BQ24250_UNKNOWN_DETECTED:
		return scnprintf(buf, PAGE_SIZE, "0\n");
	default:
		return scnprintf(buf, PAGE_SIZE, "UNKNOWN\n");
		
	}

}

static DEVICE_ATTR(charge_current, S_IRUSR|S_IRGRP|S_IROTH,
                show_charge_current, NULL);

static ssize_t show_charge_enable(struct device *dev, struct device_attribute *attr,
                        char *buf)
{
        ssize_t ret = 0;
	
	if(bq24250_charge_enable_disable_get())
        {
                ret = sprintf(buf, "Enabled\n");
        }
        else
        {
                ret = sprintf(buf, "Disabled\n");
        }

	return ret;
}

static ssize_t set_charge_enable(struct device *dev, struct device_attribute *attr,
                        const char *buf, size_t count)
{
/* Doing an i2c write to set the charger enable/disable results in unexpected behavior of 
the charger chip. Commenting it out for now and may have to fix this if this is a 
"must have" for mfgtest */ 

#if 0
        unsigned int value;

        if (sscanf(buf, "%u", &value) != 1)
                return -EINVAL;
	
	if (value)
                bq24250_charge_enable_disable_set(1);
        else
                bq24250_charge_enable_disable_set(0);
#endif
        return count;
}

static DEVICE_ATTR(charge_enable, S_IRUSR|S_IRGRP|S_IROTH|S_IWUSR|S_IWGRP|S_IWOTH,
        show_charge_enable, set_charge_enable);

#endif

#endif
static struct attribute *power_attributes[] = {
	&dev_attr_shutdown.attr,

#ifndef CONFIG_PLAT_NXP4330_GLASGOW_ALPHA
	&dev_attr_voltage.attr,
	&dev_attr_low_battery_reported_voltage.attr,
	&dev_attr_external.attr,
	&dev_attr_status.attr,
	&dev_attr_max_battery_mv.attr,
	&dev_attr_normal_battery_mv.attr,
	&dev_attr_low_battery_mv.attr,
	&dev_attr_low_battery_repeat_mv.attr,
	&dev_attr_critical_battery_mv.attr,
	&dev_attr_adc_slope_256.attr,
	&dev_attr_adc_constant.attr,
	&dev_attr_power_source.attr,
#ifdef CONFIG_BQ24250_CHARGER
	&dev_attr_usb_charger_type.attr,
	&dev_attr_charge_status.attr,
	&dev_attr_charge_current.attr,
	&dev_attr_charge_enable.attr,
#endif
#endif
	NULL
};

static struct attribute_group power_attr_group = {
	.attrs = power_attributes
};

static void power_button_monitoring_task(unsigned long data)
{
	struct glasgow_hwmon *priv = (struct glasgow_hwmon *)data;
	queue_work(priv->power_button_tasks, &priv->power_button_work);
	
	/* reset task timer */
	priv->power_button_timer.expires += POWER_BUTTON_SAMPLING_J;
	priv->power_button_timer.function = power_button_monitoring_task;
	priv->power_button_timer.data = data;
	add_timer(&priv->power_button_timer);
}

/*
 * read the system power button status
 */
static int get_power_button(int chip)
{
	int ret = 0;
	
	if(NX_ALIVE_GetVDDPWRTOGGLE())
	{
		ret = 1;
	}
	return ret;
}


/*
 * handle power button, shutdown if pressed for SHUTDOWN_SECS
 */

static void glasgow_power_button(struct work_struct *work)
{
	//printk(KERN_INFO "%s: %d\n", __FUNCTION__, __LINE__);

	int power_button = get_power_button(hwmon_dev->chip);
	if(power_button)
	{
		printk(KERN_INFO "%s: %d \n", __FUNCTION__, __LINE__);
		input_report_key(hwmon_dev->input, KEY_POWER, 1);
		input_sync(hwmon_dev->input);
		dev_info(&hwmon_dev->pdev->dev, "Power button pressed\n");
		hwmon_dev->shutdown = 1;
		if(hwmon_dev->shutdown)
			dev_info(&hwmon_dev->pdev->dev, "shutdown requested \n");
	}

	///* report event if power button just pressed */
	//if (!hwmon_dev->power_button_count && power_button) {	
		//input_report_key(hwmon_dev->input, KEY_POWER, 1);
		//input_sync(hwmon_dev->input);
		//dev_info(&hwmon_dev->pdev->dev,
			//"Power button pressed\n");
	//}

	///* report if power button is released */
	//if (hwmon_dev->power_button_count < POWER_BUTTON_COUNT &&
		//!power_button) {

		///* report event if power button just released */
		//if (hwmon_dev->power_button_count) {
			//input_report_key(hwmon_dev->input, KEY_POWER, 0);
			//input_sync(hwmon_dev->input);
			//dev_info(&hwmon_dev->pdev->dev,
				//"Power button released\n");
		//}

		//hwmon_dev->power_button_count = 0; /* reset count */ 
		///* enable the power button IRQ */
		//switch (hwmon_dev->chip)
		//{
//#ifdef CONFIG_ARCH_LF1000
		//case LF1000:
			//gpio_set_int(POWER_PORT, POWER_PIN, 1);
			//break;
//#endif
		//case LFP100:
		//case TC7734:
			//break;

		//default:
			//dev_alert(&hwmon_dev->pdev->dev,
				//"%s.%d unknown chip %d\n", __FUNCTION__,
				//__LINE__, hwmon_dev->chip);
			//break;
		//}
		//return;
	//}

	/* note shutdown was requested, set shutdown bit but never clear it */
	//hwmon_dev->shutdown = 1;
		//if(hwmon_dev->shutdown)
			//dev_info(&hwmon_dev->pdev->dev, "shutdown requested \n");
	

	///* button still pressed, run task up to POWER_BUTTON_COUNT times */
	//if (hwmon_dev->power_button_count++ <= POWER_BUTTON_COUNT) {
		//hwmon_dev->power_button_timer.expires +=
			 //POWER_BUTTON_SAMPLING_J;
		//hwmon_dev->power_button_timer.function =
			//power_button_monitoring_task;
		//hwmon_dev->power_button_timer.data = (unsigned long)hwmon_dev;

		//if (!timer_pending(&hwmon_dev->power_button_timer))
			//add_timer(&hwmon_dev->power_button_timer);

		///*
		 //* Use second to last time through to show some status,
		 //* as pm_power_off() is too late.
		 //*/
		//if (hwmon_dev->power_button_count == POWER_BUTTON_COUNT)
		       //dev_info(&hwmon_dev->pdev->dev,
			//"Power button held, shutdown with pm_power_off()\n");
	//} 
	//else {
		///* ran timer long enough, shutdown */
		//if (pm_power_off)
		//{
			//dev_info(&hwmon_dev->pdev->dev, "power off requested \n");
			//pm_power_off();
		//}
		//else {
			//dev_alert(&hwmon_dev->pdev->dev, "%s.%d: no pm_power_off()\n", __FUNCTION__, __LINE__);
///* FIXME:  pm_power_off() should be defined */
//#if 0
			//extern void lf3000_poweroff(void);
			//if (hwmon_dev->chip == LFP100 ||
				//hwmon_dev->chip == TC7734)
				//lf3000_poweroff();
//#endif
		//}
	//}
}

/*
 * Start background process
 */

static void glasgow_start_power_button_monitor(void)
{
	if (!hwmon_dev->power_button_count) {/* run background task */
		printk(KERN_INFO "%s: %d\n", __FUNCTION__, __LINE__);
		hwmon_dev->power_button_timer.expires = get_jiffies_64();
		hwmon_dev->power_button_timer.function =
			power_button_monitoring_task;
		hwmon_dev->power_button_timer.data = (unsigned long)hwmon_dev;
		if (!timer_pending(&hwmon_dev->power_button_timer))
			add_timer(&hwmon_dev->power_button_timer);
	}
}

/*
 * set up input device for power button and critical battery
 */
static int setup_power_button(struct platform_device *pdev)
{
	struct glasgow_hwmon *data = platform_get_drvdata(pdev);
	struct input_dev *input_dev;
	int ret;

	input_dev = input_allocate_device();
	if(!input_dev)
		return -ENOMEM;

	input_dev->name = "Power Button";
	input_dev->phys = "glasgow/power_button";
	input_dev->id.bustype = BUS_HOST;
	input_dev->id.vendor = 0x0001;
	input_dev->id.product = 0x0001;
	input_dev->id.version = 0x0001;
	
	input_dev->evbit[0] = BIT(EV_KEY);
	input_dev->keycode = data->buttons;
	input_dev->keycodesize = sizeof(unsigned char);
	input_dev->keycodemax = 1;

	data->input = input_dev;
	data->buttons[0] = KEY_POWER;	/* we only support power button */
	set_bit(data->buttons[0], input_dev->keybit);

	ret = input_register_device(data->input);
	if(ret)
		goto fail_register;

fail_register:
	input_free_device(input_dev);
	return ret;
}

static int glasgow_power_probe(struct platform_device *pdev)
{
	int ret = 0;
	struct glasgow_hwmon *priv;
	struct device dev = pdev->dev;

	priv = kzalloc(sizeof(struct glasgow_hwmon), GFP_KERNEL);
	if(!priv) {
		ret = -ENOMEM;
		goto fail_alloc;
	}

	priv->pdev = pdev;

	platform_set_drvdata(pdev, priv);

	hwmon_dev = priv;
	
	/* set up work queue to handle the power button */
	priv->power_button_tasks =
		create_singlethread_workqueue("power button tasks");
	INIT_WORK(&priv->power_button_work, glasgow_power_button);

	/* init button power timer */
	setup_timer(&priv->power_button_timer, power_button_monitoring_task,
		       (unsigned long)priv);
	priv->power_button_timer.expires = get_jiffies_64() + 
		POWER_BUTTON_SAMPLING_J;
	priv->power_button_timer.function = power_button_monitoring_task;
	priv->power_button_timer.data = (unsigned long)hwmon_dev;
	add_timer(&priv->power_button_timer);

	/* setup power button monitoring after initializing timer structure */
	ret = setup_power_button(pdev);
	if(ret)
		goto fail_button;

	ret = sysfs_create_group(&pdev->dev.kobj, &power_attr_group);
	if(pdev)
		printk(KERN_INFO "power button sysfs %s\n", pdev->name);

	return 0;

fail_button:
fail_alloc:
	kfree(priv);
	return ret;
}

static int glasgow_power_remove(struct platform_device *pdev)
{
	struct glasgow_hwmon *priv = platform_get_drvdata(pdev);

	destroy_workqueue(priv->power_button_tasks);

	sysfs_remove_group(&pdev->dev.kobj, &power_attr_group);

	kfree(priv);

	return 0;
}

static struct platform_driver glasgow_power_driver = {
	.probe      = glasgow_power_probe,
	.remove     = glasgow_power_remove,
	.driver     = {
		.name	= "glasgow-power",
		.owner	= THIS_MODULE,
	},
};

/*
 * module stuff
 */
 
static int __init init_glasgow_power(void)
{
	return platform_driver_register(&glasgow_power_driver);
}

static void cleanup_glasgow_power(void)
{
	platform_driver_unregister(&glasgow_power_driver);
}

late_initcall(init_glasgow_power);
module_exit(cleanup_glasgow_power);

MODULE_AUTHOR("Sukhada Palav");
MODULE_DESCRIPTION("Glasgow hardware monitoring");
MODULE_LICENSE("GPL");

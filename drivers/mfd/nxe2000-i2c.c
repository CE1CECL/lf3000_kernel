/*
 * nxe2000.c - mfd core driver for the NXE2000
 *
 *  Copyright (C) 2013 Nexell Co,.Ltd.
 *  Bongkwan Kook <kook@nexell.co.kr>
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
#include <linux/moduleparam.h>
#include <linux/init.h>
#include <linux/slab.h>
#include <linux/i2c.h>
#include <linux/interrupt.h>
#include <linux/pm_runtime.h>
#include <linux/mutex.h>
#include <linux/mfd/core.h>

/* nexell soc headers */
#include <mach/platform.h>
#include <nxe2000.h>
#include <nxe2000-private.h>


/*
 * Debug
 */
#if (0)
#define DBGOUT(msg...)		{ printk("nxe2000-i2c: " msg); }
#else
#define DBGOUT(msg...)		do {} while (0)
#endif

static struct mfd_cell nxe2000_devs[] = {
	{
		.name = "nxe2000-pmic",
	}, {
		.name = "nxe2000-battery",
	},
};

int nxe2000_read_reg(struct i2c_client *i2c, u8 reg, u8 *dest)
{
	struct nxe2000_dev *nxe2000 = i2c_get_clientdata(i2c);
	struct i2c_msg msg[2];
	u8  data = reg;
	int ret = 0;

	DBGOUT("%s\n", __func__);

	if (!i2c->adapter)
		return -ENODEV;

	msg[0].addr  = i2c->addr;
	msg[0].flags = 0;
	msg[0].len   = 1;
	msg[0].buf   = &data;

	msg[1].addr  = i2c->addr;
	msg[1].flags = I2C_M_RD;
	msg[1].len   = 1;
	msg[1].buf   = &data;

	mutex_lock(&nxe2000->iolock);
	ret = i2c_transfer(i2c->adapter, msg, 2);
	mutex_unlock(&nxe2000->iolock);

	*dest = data;
	return 0;
}
EXPORT_SYMBOL(nxe2000_read_reg);

int nxe2000_bulk_read(struct i2c_client *i2c, u8 reg, int count, u8 *buf)
{
	struct nxe2000_dev *nxe2000 = i2c_get_clientdata(i2c);
	struct i2c_msg msg[2];
	int ret = 0;

	DBGOUT("%s\n", __func__);

	if (!i2c->adapter)
		return -ENODEV;

	msg[0].addr  = i2c->addr;
	msg[0].flags = 0;
	msg[0].len   = 1;
	msg[0].buf   = &reg;

	msg[1].addr  = i2c->addr;
	msg[1].flags = I2C_M_RD;
	msg[1].len   = count;
	msg[1].buf   = buf;

	mutex_lock(&nxe2000->iolock);
	ret = i2c_transfer(i2c->adapter, msg, 2);
	mutex_unlock(&nxe2000->iolock);

	return ret;
}
EXPORT_SYMBOL(nxe2000_bulk_read);

int nxe2000_write_reg(struct i2c_client *i2c, u8 reg, u8 value)
{
	struct nxe2000_dev *nxe2000 = i2c_get_clientdata(i2c);
	struct i2c_msg msg[1];
	u_char *cache	= nxe2000->cache_reg;
	u8		data[2] = { reg, value };
	int		ret;

	DBGOUT("%s\n", __func__);

	if (!i2c->adapter)
		return -ENODEV;

	msg->addr  = i2c->addr;
	msg->flags = 0;
	msg->len   = 2;
	msg->buf   = data;

	mutex_lock(&nxe2000->iolock);
	ret = i2c_transfer(i2c->adapter, msg, 1);
	if (ret >= 0)
		cache[reg] = value;
	mutex_unlock(&nxe2000->iolock);

	return ret;
}
EXPORT_SYMBOL(nxe2000_write_reg);
#define NXE2000_BULK_WRITE_COUNT_MAX	(10)
int nxe2000_bulk_write(struct i2c_client *i2c, u8 reg, int count, u8 *buf)
{
	struct nxe2000_dev *nxe2000 = i2c_get_clientdata(i2c);
	struct i2c_msg msg[1];
	u_char *cache	= nxe2000->cache_reg;
	u8		data[NXE2000_BULK_WRITE_COUNT_MAX + 1];
	int		i, ret = 0;

	DBGOUT("%s\n", __func__);

	if (!i2c->adapter)
		return -ENODEV;

	if (count > NXE2000_BULK_WRITE_COUNT_MAX)
		count = NXE2000_BULK_WRITE_COUNT_MAX;

	data[0] = reg;
	for (i = 0; i < count; i++) {
		data[i + 1]	= buf[i];
	}

	msg->addr  = i2c->addr;
	msg->flags = 0;
	msg->len   = count + 1;
	msg->buf   = data;

	mutex_lock(&nxe2000->iolock);
	ret = i2c_transfer(i2c->adapter, msg, 1);
	mutex_unlock(&nxe2000->iolock);

	if (ret < 0)
		return ret;

	for (i = 0; i < count; i++) {
		cache[reg + i] = buf[i];
	}

	return 0;
}
EXPORT_SYMBOL(nxe2000_bulk_write);

int nxe2000_update_reg(struct i2c_client *i2c, u8 reg, u8 val, u8 mask)
{
	int ret;
	u8	data;

	DBGOUT("%s\n", __func__);

	ret = nxe2000_read_reg(i2c, reg, &data);
	if (ret == 0) {
		u8 old_val = data & 0xff;
		u8 new_val = (val & mask) | (old_val & (~mask));
		ret = nxe2000_write_reg(i2c, reg, new_val);
	}
	return ret;
}
EXPORT_SYMBOL(nxe2000_update_reg);

static int nxe2000_i2c_probe(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct nxe2000_pdata *pdata = i2c->dev.platform_data;
	struct nxe2000_dev *nxe2000;
	int ret = 0;

	DBGOUT("%s\n", __func__);

	nxe2000 = kzalloc(sizeof(struct nxe2000_dev), GFP_KERNEL);
	if (nxe2000 == NULL)
	{
		printk(KERN_ERR "Fail: no memory for nxe1000 parameters !!!\n");
		return -ENOMEM;
	}

	i2c_set_clientdata(i2c, nxe2000);
	nxe2000->dev = &i2c->dev;
	nxe2000->i2c = i2c;
	nxe2000->irq = i2c->irq;
	nxe2000->type = id->driver_data;
#if 0
	if (pdata) {
		nxe2000->ono = pdata->ono;
		nxe2000->irq_base = pdata->irq_base;
		nxe2000->wakeup = pdata->wakeup;
	}
#else
	
	if (!pdata)
		goto err;

	nxe2000->gpio_eint = pdata->gpio_eint;
	nxe2000->irq_base = pdata->irq_base;
	nxe2000->ono = pdata->ono;
#endif

	mutex_init(&nxe2000->iolock);

	pm_runtime_set_active(nxe2000->dev);

	nxe2000_irq_init(nxe2000);

#if 0
	switch (id->driver_data) {
	case TYPE_NXE2000:
		ret = mfd_add_devices(nxe2000->dev, -1,
				nxe2000_devs, ARRAY_SIZE(nxe2000_devs),
				NULL, 0);
		break;
	default:
		ret = -EINVAL;
	}
#else

	ret = mfd_add_devices(nxe2000->dev, -1,
			nxe2000_devs, ARRAY_SIZE(nxe2000_devs),
			NULL, 0);
#endif

	if (ret < 0)
		goto err_mfd;

	device_init_wakeup(nxe2000->dev, nxe2000->wakeup);

	return ret;

err_mfd:
	mfd_remove_devices(nxe2000->dev);

err:
	nxe2000_irq_exit(nxe2000);
	kfree(nxe2000);
	return ret;
}

static int nxe2000_i2c_remove(struct i2c_client *i2c)
{
	struct nxe2000_dev *nxe2000 = i2c_get_clientdata(i2c);

	DBGOUT("%s\n", __func__);

	mfd_remove_devices(nxe2000->dev);
	nxe2000_irq_exit(nxe2000);
	kfree(nxe2000);

	return 0;
}

static const struct i2c_device_id nxe2000_i2c_id[] = {
	{ "nxe2000", TYPE_NXE2000 },
	{ }
};
MODULE_DEVICE_TABLE(i2c, nxe2000_i2c_id);

static int nxe2000_suspend(struct device *dev)
{
	struct i2c_client *i2c = container_of(dev, struct i2c_client, dev);
	struct nxe2000_dev *nxe2000 = i2c_get_clientdata(i2c);

	DBGOUT("%s\n", __func__);

	if (device_may_wakeup(dev))
		irq_set_irq_wake(nxe2000->irq, 1);
	return 0;
}

static int nxe2000_resume(struct device *dev)
{
	struct i2c_client *i2c = container_of(dev, struct i2c_client, dev);
	struct nxe2000_dev *nxe2000 = i2c_get_clientdata(i2c);

	DBGOUT("%s\n", __func__);

	if (device_may_wakeup(dev))
		irq_set_irq_wake(nxe2000->irq, 0);
	/*
	 * If IRQ registers are not "read & clear"
	 * when it's set during sleep, the interrupt becomes
	 * disabled.
	 */
	return nxe2000_irq_resume(i2c_get_clientdata(i2c));
}

struct nxe2000_reg_dump {
	u8	addr;
	u8	val;
};
#define SAVE_ITEM(x)	{ .addr = (x), .val = 0x0, }
static struct nxe2000_reg_dump nxe2000_dump[] = {
	SAVE_ITEM(NXE2000_REG_DC1CTL),
	SAVE_ITEM(NXE2000_REG_DC1CTL2),
	SAVE_ITEM(NXE2000_REG_DC2CTL),
	SAVE_ITEM(NXE2000_REG_DC2CTL2),
	SAVE_ITEM(NXE2000_REG_DC3CTL),
	SAVE_ITEM(NXE2000_REG_DC3CTL2),
	SAVE_ITEM(NXE2000_REG_DC1DAC),
	SAVE_ITEM(NXE2000_REG_DC2DAC),
	SAVE_ITEM(NXE2000_REG_DC3DAC),
	SAVE_ITEM(NXE2000_REG_LDOEN1),
	SAVE_ITEM(NXE2000_REG_LDOEN2),
	SAVE_ITEM(NXE2000_REG_LDO1DAC),
	SAVE_ITEM(NXE2000_REG_LDO2DAC),
	SAVE_ITEM(NXE2000_REG_LDO3DAC),
	SAVE_ITEM(NXE2000_REG_LDO4DAC),
	SAVE_ITEM(NXE2000_REG_LDO5DAC),
};
/* Save registers before hibernation */
static int nxe2000_freeze(struct device *dev)
{
	struct i2c_client *i2c = container_of(dev, struct i2c_client, dev);
	int i;

	DBGOUT("%s\n", __func__);

	for (i = 0; i < ARRAY_SIZE(nxe2000_dump); i++)
		nxe2000_read_reg(i2c, nxe2000_dump[i].addr,
				&nxe2000_dump[i].val);

	return 0;
}

/* Restore registers after hibernation */
static int nxe2000_restore(struct device *dev)
{
	struct i2c_client *i2c = container_of(dev, struct i2c_client, dev);
	int i;

	DBGOUT("%s\n", __func__);

	for (i = 0; i < ARRAY_SIZE(nxe2000_dump); i++)
		nxe2000_write_reg(i2c, nxe2000_dump[i].addr,
				nxe2000_dump[i].val);

	return 0;
}

static const struct dev_pm_ops nxe2000_pm_ops = {
	.suspend = nxe2000_suspend,
	.resume = nxe2000_resume,
	.freeze = nxe2000_freeze,
	.restore = nxe2000_restore,
};

static struct i2c_driver nxe2000_i2c_driver = {
	.driver = {
		   .name = "nxe2000",
		   .owner = THIS_MODULE,
		   .pm = &nxe2000_pm_ops,
	},
	.probe = nxe2000_i2c_probe,
	.remove = __devexit_p(nxe2000_i2c_remove),
	.id_table = nxe2000_i2c_id,
};

static int __init nxe2000_i2c_init(void)
{
	int ret;

	DBGOUT("%s\n", __func__);

	ret = i2c_add_driver(&nxe2000_i2c_driver);
	if (ret != 0)
		printk("Failed to register nxe2000 I2C driver: %d\n", ret);

	return ret;
}
/* init early so consumer devices can complete system boot */
subsys_initcall(nxe2000_i2c_init);

static void __exit nxe2000_i2c_exit(void)
{
	DBGOUT("%s\n", __func__);

	i2c_del_driver(&nxe2000_i2c_driver);
}
module_exit(nxe2000_i2c_exit);

MODULE_DESCRIPTION("NXE2000 multi-function core driver");
MODULE_AUTHOR("Bongkwan Kook <kook@nexell.co.kr>");
MODULE_LICENSE("GPL");

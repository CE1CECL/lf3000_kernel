/*
 * (C) Copyright 2009
 * jung hyun kim, Nexell Co, <jhkim@nexell.co.kr>
 *
 * See file CREDITS for list of people who contributed to this
 * project.
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of
 * the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
 * MA 02111-1307 USA
 */

#include <linux/module.h>

#if defined (CONFIG_INITRAMFS_SOURCE) && defined (CONFIG_DEVTMPFS_MOUNT)
#include <linux/device.h>
static int __init devtmpfs_init(void)
{
	char *rdsrc = CONFIG_INITRAMFS_SOURCE;
	if (!strcmp(rdsrc, ""))
		return 0;

	printk("Mount   : devtmpfs\n");
	devtmpfs_mount("dev");
	return 0;
}
late_initcall(devtmpfs_init);
#endif


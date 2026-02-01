/*
 * drivers/input/misc/lf_aclmtr.h
 *
 * Definitions for Leapfrog's accelerometer driver.
 * Generically named to fit input driver framework.
 * Supports Bosch BMA150, BMA220, and BMA222E devices via I2C.
 * Also supports Kionix KX022-1020 device via I2C.
 *
 * Copyright 2010-2016 LeapFrog Enterprises Inc.
 *
 * Dave Milici <dmilici@leapfrog.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 */

#ifndef DRIVERS_INPUT_MISC_LF_ACLMTR_H_
#define DRIVERS_INPUT_MISC_LF_ACLMTR_H_

#define INPUT_SAMPLING_HZ		10
#define INPUT_SAMPLING_JIFFIES	(HZ / INPUT_SAMPLING_HZ)

#define BMA150_ADDR			(0x70 >> 1)
#define BMA220_ADDR			(0x16 >> 1)
#define BMA222_ADDR			(0x10 >> 1)
#define BMA222E_STD_ADDR	(0x30 >> 1)
#define BMA222E_ALT_ADDR	(0x32 >> 1)
#define BMA222E_ADDR		BMA222E_STD_ADDR

#define MIN_XYZ				-(0x001F+1)
#define MAX_XYZ				0x001F

#define MIN_PHI				0x00
#define MAX_PHI				0x07
#define FLAT_MASK			0x08
#define NUM_CAL				10
#define MIN_CAL				0x00010000
#define MAX_CAL				0x00400000

/* BMA222/BMA222E register/bit definitions */
#define NEW_DATA			0x01  	//1: new data available, 0: new data not available
#define BMA222_ACCD_X_LSB	0x02	//bit 0 = NEW_DATA
#define BMA222_ACCD_X_MSB	0x03
#define BMA222_ACCD_Y_LSB	0x04	//bit 0 = NEW_DATA
#define BMA222_ACCD_Y_MSB	0x05
#define BMA222_ACCD_Z_LSB	0x06	//bit 0 = NEW_DATA
#define BMA222_ACCD_Z_MSB	0x07

/* Definitions for the Kionix KX022-1020 and KX122-1037 accelerometer */
#define KX_ACCEL_STD_ADDR	(0x3C >> 1)
#define KX_ACCEL_ALT_ADDR	(0x3E >> 1)
#define KX_ACCEL_ADDR		KX_ACCEL_STD_ADDR

#define KX_ACCEL_XHPL			0x00	/* x-axis highpass filtered output LSB */
#define KX_ACCEL_XHPH			0x01	/* x-axis highpass filtered output MSB */
#define KX_ACCEL_YHPL			0x02	/* y-axis highpass filtered output LSB */
#define KX_ACCEL_YHPH			0x03	/* y-axis highpass filtered output MSB */
#define KX_ACCEL_ZHPL			0x04	/* z-axis highpass filtered output LSB */
#define KX_ACCEL_ZHPH			0x05	/* z-axis highpass filtered output MSB */

#define KX_ACCEL_XOUTL			0x06	/* x-axis output LSB */
#define KX_ACCEL_XOUTH			0x07	/* x-axis output MSB */
#define KX_ACCEL_YOUTL			0x08	/* y-axis output LSB */
#define KX_ACCEL_YOUTH			0x09	/* y-axis output MSB */
#define KX_ACCEL_ZOUTL			0x0A	/* z-axis output LSB */
#define KX_ACCEL_ZOUTH			0x0B	/* z-axis output MSB */

#define KX_ACCEL_COTR			0x0C	/* circuit test output register */
#define KX_ACCEL_COTR_USUAL	0x55	/* the usual value */
#define KX_ACCEL_COTR_COTC		0xAA	/* the value after COTC in CNTL2 is set */
									/* After this reg is read, the value    */
									/* returns to 0x55, and COTC is cleared */
#define KX_ACCEL_WHO_AM_I		0x0F	/* device ID (0x14 for KX022_1080, 0x1B for KX022_1037) */
	#define KX022_ID		0x14
	#define KX122_ID		0x1B

/* Masks for axis-related bits (tilt, tap/dbltap, motion) */
#define KX_ACCEL_AXIS_LEFT		0x20	/* mask for LE (X-) bit */
#define KX_ACCEL_AXIS_RIGHT	0x10	/* mask for RI (X+) bit */
#define KX_ACCEL_AXIS_DOWN		0x08	/* mask for DO (Y-) bit */
#define KX_ACCEL_AXIS_UP		0x04	/* mask for UP (Y+) bit */
#define KX_ACCEL_AXIS_FACEDN	0x02	/* mask for FD (Z-) bit */
#define KX_ACCEL_AXIS_FACEUP	0x01	/* mask for FU (Z+) bit */
#define KX_ACCEL_AXIS_MASK		0x3F

#define KX_ACCEL_TSCP			0x10	/* current tilt position */
#define KX_ACCEL_TSPP			0x11	/* previous tilt position */
		/* use KX_ACCEL_AXIS_* masks */

		/* interrupt source registers */
#define KX_ACCEL_INS1			0x12	/* for tap/double-tap interrupts */
		/* use KX_ACCEL_AXIS_* masks */

#define KX_ACCEL_INS2			0x13	/* data ready, tilt position, wake-up */
	#define KX_ACCEL_INS2_BFI	0x40	/* set == buffer full interrupt occurred */
	#define KX_ACCEL_INS2_WMI	0x20	/* set == watermark interrupt occurred */
	#define KX_ACCEL_INS2_DRDY	0x10	/* set == data ready interrupt occurred */
	#define KX_ACCEL_INS2_2TAP	0x08	/* set == double tap interrupt occurred */
	#define KX_ACCEL_INS2_1TAP	0x04	/* set == single tap interrupt occurred */
	#define KX_ACCEL_INS2_WUFS	0x02	/* set == motion activated interrupt occurred */
	#define KX_ACCEL_INS2_TPS	0x01	/* set == tilt position interrupt occurred */

#define KX_ACCEL_INS3			0x14	/* axis & direction of detected motion */
		/* use KX_ACCEL_AXIS_* masks */

#define KX_ACCEL_STAT			0x15	/* bit 4 set if any interrupt event */
	#define KX_ACCEL_STAT_INT	0x10	/* mask for the INT bit */
#define KX_ACCEL_INT_REL		0x17	/* read to clear a latched interrupt */

		/* Control registers */
#define KX_ACCEL_CNTL1			0x18	/* controls the main feature set */
	#define KX_ACCEL_CNTL1_PC1	 0x80	/* set == normal operating mode; clear == standby */
	#define KX_ACCEL_CNTL1_RES	 0x40	/* set == high resolution: bandwidth = ODR/2 */
	#define KX_ACCEL_CNTL1_DRDY 0x20	/* set == new accel'n data causes interrupt */
	#define KX_ACCEL_CNTL1_GMSK 0x18	/* mask of G-range selection bits */
	#define KX_ACCEL_CNTL1_G2	 0x00	/* -2g to +2g */
	#define KX_ACCEL_CNTL1_G4	 0x08	/* -4g to +4g */
	#define KX_ACCEL_CNTL1_G8	 0x10	/* -8g to +8g */
	#define KX_ACCEL_CNTL1_TDTE 0x04	/* set == enable the directional tap function */
	#define KX_ACCEL_CNTL1_WUFE 0x02	/* set == enable Wake Up (motion detect) fn */
	#define KX_ACCEL_CNTL1_TPE  0x01	/* set == enable tilt position function */

#define KX_ACCEL_CNTL2			0x19	/* s/w reset, circuit test, tilt axis mask */
	#define KX_ACCEL_CTRL2_SRST	0x80	/* set == start software reset */
	#define KX_ACCEL_CTRL2_COTC	0x40	/* set == set COTR reg to 0xAA */
	/* bits 5:0 control the tilt axis mask.  If a bit is set, tilt in
	 * that direction generates an interrupt; if a bit is clear, tilt in
	 * that direction will not generate an interrupt.
	 * (use KX_ACCEL_AXIS_* masks) */


#define KX_ACCEL_CNTL3			0x1A	/* some output data rates */
	#define KX_ACCEL_CNTL3_OTP	0xC0	/* mask for bits that select the output */
									/* data rate for the tilt position fn */
	#define KX_ACCEL_CNTL3_OTP_1p56Hz	0x00	/* 1.563 Hz */
	#define KX_ACCEL_CNTL3_OTP_6p25Hz	0x40	/* 6.25  Hz */
	#define KX_ACCEL_CNTL3_OTP_12p5Hz	0x80	/* 12.5  Hz */
	#define KX_ACCEL_CNTL3_OTP_150Hz	0xC0	/* 50    Hz */

	#define KX_ACCEL_CNTL3_OTDT 0x38	/* mask for bits that select the output */
									/* data rate for the directional tap fn */
	#define KX_ACCEL_CNTL3_OTDT_50Hz	0x00	/* 50   Hz */
	#define KX_ACCEL_CNTL3_OTDT_100Hz	0x08	/* 100  Hz */
	#define KX_ACCEL_CNTL3_OTDT_200Hz	0x10	/* 200  Hz */
	#define KX_ACCEL_CNTL3_OTDT_400Hz	0x18	/* 400  Hz */
	#define KX_ACCEL_CNTL3_OTDT_12p5Hz	0x20	/* 12.5 Hz */
	#define KX_ACCEL_CNTL3_OTDT_25Hz	0x28	/* 25   Hz */
	#define KX_ACCEL_CNTL3_OTDT_800Hz	0x30	/* 800  Hz */
	#define KX_ACCEL_CNTL3_OTDT_1600Hz	0x38	/* 1600 Hz */

	#define KX_ACCEL_CNTL3_OWUF 0x07	/* mask for bits that select the output */
									/* data rate for the gen'l motion detection fn */
	#define KX_ACCEL_CNTL3_OWUF_0p781Hz	0x00	/* 0.781 Hz */
	#define KX_ACCEL_CNTL3_OWUF_1p563Hz	0x01	/* 1.563 Hz */
	#define KX_ACCEL_CNTL3_OWUF_3p125Hz	0x02	/* 3.125 Hz */
	#define KX_ACCEL_CNTL3_OWUF_6p250Hz	0x03	/* 6.250 Hz */
	#define KX_ACCEL_CNTL3_OWUF_12p5Hz		0x04	/* 12.5  Hz */
	#define KX_ACCEL_CNTL3_OWUF_25Hz		0x05	/* 25    Hz */
	#define KX_ACCEL_CNTL3_OWUF_50Hz		0x06	/* 50    Hz */
	#define KX_ACCEL_CNTL3_OWUF_100Hz		0x07	/* 100   Hz */

#define KX_ACCEL_ODCNTL		0x1B	/* output data rate & filter settings */
	#define KX_ACCEL_ODCNTL_IIR_BYPASS	0x80	/* set: filter bypassed; clr: filter applied */
	#define KX_ACCEL_ODCNTL_LPRO		0x40	/* low-pass filter roll off control
											 *   clr: filter corner frequency is ODR/9
											 *   set: filter corner frequency is ODR/2 */
	#define KX_ACCEL_ODCNTL_ODR		0x0F	/* mask for bits that set accel'n
	 	 	 	 	 	 	 	 	 	 	 * output data rate */
	#define KX_ACCEL_ODCNTL_ODR_12p5Hz 0x00	/* 12.5 Hz */
	#define KX_ACCEL_ODCNTL_ODR_25Hz 	0x01	/* 25   Hz */
	#define KX_ACCEL_ODCNTL_ODR_50Hz 	0x02	/* 50   Hz */
	#define KX_ACCEL_ODCNTL_ODR_100Hz	0x03	/* 100  Hz */
	#define KX_ACCEL_ODCNTL_ODR_200Hz	0x04	/* 200  Hz */
	#define KX_ACCEL_ODCNTL_ODR_400Hz	0x05	/* 400  Hz */
	#define KX_ACCEL_ODCNTL_ODR_800Hz	0x06	/* 800  Hz */
	#define KX_ACCEL_ODCNTL_ODR_1600Hz 0x07	/* 1600 Hz */
	#define KX_ACCEL_ODCNTL_ODR_p781Hz 0x08	/* 0.781 Hz */
	#define KX_ACCEL_ODCNTL_ODR_1p563Hz 0x09	/* 1.563 Hz */
	#define KX_ACCEL_ODCNTL_ODR_3p125Hz 0x0A	/* 3.125 Hz */
	#define KX_ACCEL_ODCNTL_ODR_6p25Hz  0x0B	/* 6.25  Hz */

#define KX_ACCEL_INC1			0x1C	/* settings for the INT1 pin */
	#define KX_ACCEL_INC1_IEN	0x20	/* set: enable INT1 pin */
	#define KX_ACCEL_INC1_IEA	0x10	/* set: INT1 active high */
	#define KX_ACCEL_INC1_IEL	0x08	/* set: pulsed (not latched) */
	#define KX_ACCEL_INC1_STPOL 0x02	/* set: positive self-test polarity */
	#define KX_ACCEL_INC1_SPI3E 0x01	/* set: enable 3-wire SPI intfce */

#define KX_ACCEL_INC2			0x1D	/* selects axis/directions that cause intrpts */
		/* use KX_ACCEL_AXIS_* masks; set == enable axis/dir'n interrupt */

#define KX_ACCEL_INC3			0x1E	/* selects axis/dir'ns of tap/dbltap intrpts */
		/* use KX_ACCEL_AXIS_* masks; set == enable axis/dir'n interrupt */

#define KX_ACCEL_INC4			0x1F	/* selects intrpts routed to INT1 pin */
	#define KX_ACCEL_INC4_BFI1	  0x40	/* buffer full interrupt -> INT1 */
	#define KX_ACCEL_INC4_WMI1	  0x20	/* watermark interrupt -> INT1 */
	#define KX_ACCEL_INC4_DRDYI1 0x10	/* data ready interrupt -> INT1 */
	#define KX_ACCEL_INC4_TDTI1  0x04	/* tap/dbltap interrupt -> INT1 */
	#define KX_ACCEL_INC4_WUFI1  0x02	/* wake up (motion detect) interrupt -> INT1 */
	#define KX_ACCEL_INC4_TPI1	  0x01	/* tilt position interrupt -> INT1 */

#define KX_ACCEL_INC5			0x20	/* settings for the INT2 pin */
	#define KX_ACCEL_INC5_IEN2	0x20	/* set: enable INT2 pin */
	#define KX_ACCEL_INC5_IEA2	0x10	/* set: INT2 active high */
	#define KX_ACCEL_INC5_IEL2	0x08	/* set: pulsed (not latched) */

#define KX_ACCEL_INC6			0x21	/* selects intrpts routed to INT2 pin */
	#define KX_ACCEL_INC6_BFI2	  0x40	/* buffer full interrupt -> INT2 */
	#define KX_ACCEL_INC6_WMI2	  0x20	/* watermark interrupt -> INT2 */
	#define KX_ACCEL_INC6_DRDYI2 0x10	/* data ready interrupt -> INT2 */
	#define KX_ACCEL_INC6_TDTI2  0x04	/* tap/dbltap interrupt -> INT2 */
	#define KX_ACCEL_INC6_WUFI2  0x02	/* wake up (motion detect) interrupt -> INT2 */
	#define KX_ACCEL_INC6_TPI2	  0x01	/* tilt position interrupt -> INT2 */

#define KX_ACCEL_TILT_TIMER	0x22	/* initial count for tilt pos'n timer */
									/* each count is 1/ODR */
#define KX_ACCEL_WUFC			0x23	/* initial count for motion det'n timer */
									/* each count is 1/ODR */
#define KX_ACCEL_TDTRC			0x24	/* enable/disable reporting of tap/dbltap */
	#define KX_ACCEL_TDTRC_DTRE	0x02	/* set: update interrupts on double tap events */
	#define KX_ACCEL_TDTRC_STRE	0x01	/* set: update interrupts on single tap events */

#define KX_ACCEL_TDTC			0x25	/* counter info for dbltap detection */
#define KX_ACCEL_TTH			0x26	/* jerk high threshold for tap detection */
#define KX_ACCEL_TTL			0x27	/* jerk low threshold for tap detection */
#define KX_ACCEL_FTD			0x28	/* count info for det'n of any tap */
#define KX_ACCEL_STD			0x29	/* counter info for dbltap det'n */
#define KX_ACCEL_TLT			0x2A	/* counter info for det'n of a tap event */
#define KX_ACCEL_TWS			0x2B	/* counter info for det'n of tap/dbltaps */

#define KX_ACCEL_ATH			0x30	/* threshold for wake-up (motion detect) */

#define KX_ACCEL_TILT_ANGLE_LL	0x32	/* low threshold for tilt angle det'n */
#define KX_ACCEL_TILT_ANGLE_HL	0x33	/* high level threshold for tilt angle det'n */
#define KX_ACCEL_HYST_SET		0x34	/* hysteresis for rotation states */

#define KX_ACCEL_LP_CNTL		0x35	/* # of samples to average */
	#define KX_ACCEL_LP_AVG	0x70	/* mask for bits that set # of samples avg'd */
	#define KX_ACCEL_LP_AVG0	0x00	/* average 0 samples */
	#define KX_ACCEL_LP_AVG2	0x10	/* average 2 samples */
	#define KX_ACCEL_LP_AVG4	0x20	/* average 4 samples */
	#define KX_ACCEL_LP_AVG8	0x30	/* average 8 samples */
	#define KX_ACCEL_LP_AVG16	0x40	/* average 16 samples */
	#define KX_ACCEL_LP_AVG32	0x50	/* average 32 samples */
	#define KX_ACCEL_LP_AVG64	0x60	/* average 64 samples */
	#define KX_ACCEL_LP_AVG128	0x70	/* average 128 samples */

#define KX_ACCEL_BUF_CNTL1		0x3A	/* buffer sample threshold */
#define KX_ACCEL_BUF_CNTL2		0x3B	/* controls sample buffer operation */
#define KX_ACCEL_BUF_STATUS_1	0x3C	/* status of sample buffer */
									/* contains the number of data bytes */
									/* stored in the sample buffer */
#define KX_ACCEL_BUF_STATUS_2	0x3D	/* status of sample buffer trigger */
	#define KX_ACCEL_BUF_TRIG	0x80	/* mask of the buffer trigger status bit */
#define KX_ACCEL_BUF_CLEAR		0x3E	/* clears sample buffer & status */
#define KX_ACCEL_BUF_READ		0x3F	/* buffer output register */

#define KX_ACCEL_SELF_TEST		0x60	/* Self-test control register */
#define KX_ACCEL_SELF_TEST_START 0xCA	/* write 0xCA to enable self-test */
#define KX_ACCEL_SELF_TEST_END   0x00  /* write 0x00 to end self-test */





#endif /* DRIVERS_INPUT_MISC_LF_ACLMTR_H_ */

/*
[SENSOR_INITIALIZATION]
DISP_DATE = "2010-09-16 14:00:00"
DISP_WIDTH = 400
DISP_HEIGHT = 300
DISP_FORMAT = YUV422
DISP_DATAORDER = YUYV
MCLK = 26.00
PLL = 2.00

BEGIN
*/

static const char HI253_Default[][3] = {

//page 0
{WINDOW_PAGE, PWRCTL, 0xf1}, //0x79}, //sleep on
{WINDOW_PAGE, 0x08, 0x0f}, //Hi-Z on
{WINDOW_PAGE, PWRCTL, 0xf0}, //0x78}, //sleep off

{WINDOW_PAGE, PAGEMODE, WINDOW_PAGE}, // Dummy 750us START
{WINDOW_PAGE, PAGEMODE, WINDOW_PAGE},
{WINDOW_PAGE, PAGEMODE, WINDOW_PAGE},
{WINDOW_PAGE, PAGEMODE, WINDOW_PAGE},
{WINDOW_PAGE, PAGEMODE, WINDOW_PAGE},
{WINDOW_PAGE, PAGEMODE, WINDOW_PAGE},
{WINDOW_PAGE, PAGEMODE, WINDOW_PAGE},
{WINDOW_PAGE, PAGEMODE, WINDOW_PAGE},
{WINDOW_PAGE, PAGEMODE, WINDOW_PAGE},
{WINDOW_PAGE, PAGEMODE, WINDOW_PAGE}, // Dummy 750us END

{WINDOW_PAGE, PLLCTL1, PLLX(0x00)}, //PLL On
{WINDOW_PAGE, PLLCTL1, PLLX(0x70)}, //PLLx2

{WINDOW_PAGE, PAGEMODE, WINDOW_PAGE}, // Dummy 750us START
{WINDOW_PAGE, PAGEMODE, WINDOW_PAGE},
{WINDOW_PAGE, PAGEMODE, WINDOW_PAGE},
{WINDOW_PAGE, PAGEMODE, WINDOW_PAGE},
{WINDOW_PAGE, PAGEMODE, WINDOW_PAGE},
{WINDOW_PAGE, PAGEMODE, WINDOW_PAGE},
{WINDOW_PAGE, PAGEMODE, WINDOW_PAGE},
{WINDOW_PAGE, PAGEMODE, WINDOW_PAGE},
{WINDOW_PAGE, PAGEMODE, WINDOW_PAGE},
{WINDOW_PAGE, PAGEMODE, WINDOW_PAGE}, // Dummy 750us END

{WINDOW_PAGE, PLLCTL1, 0x00}, //PLL off
{WINDOW_PAGE, PWRCTL, 0xf1}, //0x71}, //sleep on
{WINDOW_PAGE, 0x08, 0x00}, //Hi-Z off

{WINDOW_PAGE, PWRCTL, 0xf3}, //0x73},
{WINDOW_PAGE, PWRCTL, 0xf1}, //0x71},

// PAGE 20
{WINDOW_PAGE, PAGEMODE, AUTOEXP_PAGE}, //page 20
{AUTOEXP_PAGE, AECTL1, 0x1c}, //ae off

// PAGE 22
{AUTOEXP_PAGE, PAGEMODE, AUTOWB_PAGE}, //page 22
{AUTOWB_PAGE, AWBCTL1, 0x69}, //awb off


//Initial Start
/////// PAGE 0 START ///////
{AUTOWB_PAGE, PAGEMODE, WINDOW_PAGE},
{WINDOW_PAGE, VDOCTL1, 0x23}, // Sub1/2_Preview2 Mode_H binning
{WINDOW_PAGE, VDOCTL2, FLIP(0x94)},
{WINDOW_PAGE, SYNCCTL, 0x24},

{WINDOW_PAGE, 0x0b, 0xaa}, // ESD Check Register
{WINDOW_PAGE, 0x0c, 0xaa}, // ESD Check Register
{WINDOW_PAGE, 0x0d, 0xaa}, // ESD Check Register

{WINDOW_PAGE, WINROWH, 0x00}, // Windowing start point Y
{WINDOW_PAGE, WINROWL, 0x04},
{WINDOW_PAGE, WINCOLH, 0x00}, // Windowing start point X
{WINDOW_PAGE, WINCOLL, 0x07},

{WINDOW_PAGE, WINHGTH, 0x04},
{WINDOW_PAGE, WINHGTL, 0xb0},
{WINDOW_PAGE, WINWIDH, 0x06},
{WINDOW_PAGE, WINWIDL, 0x40}, // WINROW END

{WINDOW_PAGE, HBLANKH, 0x01},
{WINDOW_PAGE, HBLANKL, 0x78},
{WINDOW_PAGE, VSYNCH, 0x00},
{WINDOW_PAGE, VSYNCL, 0x14},
{WINDOW_PAGE, VSCLIP, 0x09},
{WINDOW_PAGE, VSCTL1, 0x04},
{WINDOW_PAGE, VSCTL2, 0x18},
{WINDOW_PAGE, VSCTL3, 0xd8},

//BLC
{WINDOW_PAGE, BLCCTL, 0x2e},
{WINDOW_PAGE, 0x81, 0x7e},
{WINDOW_PAGE, 0x82, 0x90},
{WINDOW_PAGE, 0x83, 0x00},
{WINDOW_PAGE, 0x84, 0x0c},
{WINDOW_PAGE, 0x85, 0x00},
{WINDOW_PAGE, BLCTIMETHON, 0x06}, //BLC_TIME_TH_ON
{WINDOW_PAGE, BLCTIMETHOFF, 0x06}, //BLC_TIME_TH_OFF 
{WINDOW_PAGE, BLCAGTHH, 0xd8}, //BLC_AG_TH_ON
{WINDOW_PAGE, BLCAGTHL, 0xd0}, //BLC_AG_TH_OFF
{WINDOW_PAGE, BLCDGH, 0x75},
{WINDOW_PAGE, BLCDGL, 0x70},
{WINDOW_PAGE, 0x96, 0xdc},
{WINDOW_PAGE, 0x97, 0xfe},
{WINDOW_PAGE, 0x98, 0x38},

//OutDoor  BLC
{WINDOW_PAGE, 0x99, 0x48},
{WINDOW_PAGE, 0x9a, 0x48},
{WINDOW_PAGE, 0x9b, 0x48},
{WINDOW_PAGE, 0x9c, 0x48},

//Dark BLC
{WINDOW_PAGE, BLCOFSDB, 0x48},
{WINDOW_PAGE, BLCOFSDGB, 0x48},
{WINDOW_PAGE, BLCOFSDR, 0x48},
{WINDOW_PAGE, BLCOFSDGR, 0x48},

//Normal BLC
{WINDOW_PAGE, 0xa8, 0x48},
{WINDOW_PAGE, 0xaa, 0x48},
{WINDOW_PAGE, 0xac, 0x48},
{WINDOW_PAGE, 0xae, 0x48},

{WINDOW_PAGE, PAGEMODE, UNDOC_0x02_PAGE}, //Page 02
{UNDOC_0x02_PAGE, 0x10, 0x00}, //Mode_test
{UNDOC_0x02_PAGE, 0x11, 0x00}, //Mode_dead_test
{UNDOC_0x02_PAGE, 0x12, 0x03}, //pwr_ctl_ctl1
{UNDOC_0x02_PAGE, 0x13, 0x03}, //Mode_ana_test
{UNDOC_0x02_PAGE, 0x14, 0x00}, //mode_memory
{UNDOC_0x02_PAGE, 0x16, 0x00}, //dcdc_ctl1
{UNDOC_0x02_PAGE, 0x17, 0x8c}, //dcdc_ctl2
{UNDOC_0x02_PAGE, 0x18, 0x4C}, //analog_func1
{UNDOC_0x02_PAGE, 0x19, 0x00}, //analog_func2
{UNDOC_0x02_PAGE, 0x1a, 0x39}, //analog_func3
{UNDOC_0x02_PAGE, 0x1b, 0x00}, //analog_func4
{UNDOC_0x02_PAGE, 0x1c, 0x09}, //dcdc_ctl3
{UNDOC_0x02_PAGE, 0x1d, 0x40}, //dcdc_ctl4
{UNDOC_0x02_PAGE, 0x1e, 0x30}, //analog_func7
{UNDOC_0x02_PAGE, 0x1f, 0x10}, //analog_func8
{UNDOC_0x02_PAGE, 0x20, 0x77}, //pixel bias
{UNDOC_0x02_PAGE, 0x21, 0xde}, //adc,asp bias
{UNDOC_0x02_PAGE, 0x22, 0xa7}, //main,bus bias
{UNDOC_0x02_PAGE, 0x23, 0x30}, //clamp
{UNDOC_0x02_PAGE, 0x24, 0x4a},		
{UNDOC_0x02_PAGE, 0x25, 0x10},		
{UNDOC_0x02_PAGE, 0x27, 0x3c},		
{UNDOC_0x02_PAGE, 0x28, 0x00},		
{UNDOC_0x02_PAGE, 0x29, 0x0c},		
{UNDOC_0x02_PAGE, 0x2a, 0x80},		
{UNDOC_0x02_PAGE, 0x2b, 0x80},		
{UNDOC_0x02_PAGE, 0x2c, 0x02},		
{UNDOC_0x02_PAGE, 0x2d, 0xa0},		
{UNDOC_0x02_PAGE, 0x2e, 0x00}, // 0x11->0x00 [20110809 update]
{UNDOC_0x02_PAGE, 0x2f, 0x00},// 0xa1->0x00 [20110809 update]		
{UNDOC_0x02_PAGE, 0x30, 0x05}, //swap_ctl
{UNDOC_0x02_PAGE, 0x31, 0x99},		
{UNDOC_0x02_PAGE, 0x32, 0x00},		
{UNDOC_0x02_PAGE, 0x33, 0x00},		
{UNDOC_0x02_PAGE, 0x34, 0x22},		
{UNDOC_0x02_PAGE, 0x38, 0x88},		
{UNDOC_0x02_PAGE, 0x39, 0x88},		
{UNDOC_0x02_PAGE, 0x50, 0x20},		
{UNDOC_0x02_PAGE, 0x51, 0x00},		
{UNDOC_0x02_PAGE, 0x52, 0x01},		
{UNDOC_0x02_PAGE, 0x53, 0xc1},		
{UNDOC_0x02_PAGE, 0x54, 0x10},		
{UNDOC_0x02_PAGE, 0x55, 0x1c},		
{UNDOC_0x02_PAGE, 0x56, 0x11},		
{UNDOC_0x02_PAGE, 0x58, 0x10},		
{UNDOC_0x02_PAGE, 0x59, 0x0e},		
{UNDOC_0x02_PAGE, 0x5d, 0xa2},		
{UNDOC_0x02_PAGE, 0x5e, 0x5a},		
{UNDOC_0x02_PAGE, 0x60, 0x87},		
{UNDOC_0x02_PAGE, 0x61, 0x99},		
{UNDOC_0x02_PAGE, 0x62, 0x88},		
{UNDOC_0x02_PAGE, 0x63, 0x97},		
{UNDOC_0x02_PAGE, 0x64, 0x88},		
{UNDOC_0x02_PAGE, 0x65, 0x97},		
{UNDOC_0x02_PAGE, 0x67, 0x0c},		
{UNDOC_0x02_PAGE, 0x68, 0x0c},		
{UNDOC_0x02_PAGE, 0x69, 0x0c},		
{UNDOC_0x02_PAGE, 0x6a, 0xb4},		
{UNDOC_0x02_PAGE, 0x6b, 0xc4},		
{UNDOC_0x02_PAGE, 0x6c, 0xb5},		
{UNDOC_0x02_PAGE, 0x6d, 0xc2},		
{UNDOC_0x02_PAGE, 0x6e, 0xb5},		
{UNDOC_0x02_PAGE, 0x6f, 0xc0},		
{UNDOC_0x02_PAGE, 0x70, 0xb6},		
{UNDOC_0x02_PAGE, 0x71, 0xb8},		
{UNDOC_0x02_PAGE, 0x72, 0x89},		
{UNDOC_0x02_PAGE, 0x73, 0x96},		
{UNDOC_0x02_PAGE, 0x74, 0x89},		
{UNDOC_0x02_PAGE, 0x75, 0x96},		
{UNDOC_0x02_PAGE, 0x76, 0x89},		
{UNDOC_0x02_PAGE, 0x77, 0x96},		
{UNDOC_0x02_PAGE, 0x7c, 0x85},		
{UNDOC_0x02_PAGE, 0x7d, 0xaf},		
{UNDOC_0x02_PAGE, 0x80, 0x01},		
{UNDOC_0x02_PAGE, 0x81, 0x7f},		
{UNDOC_0x02_PAGE, 0x82, 0x13}, //rx_on1_read
{UNDOC_0x02_PAGE, 0x83, 0x24},		
{UNDOC_0x02_PAGE, 0x84, 0x7D},		
{UNDOC_0x02_PAGE, 0x85, 0x81},		
{UNDOC_0x02_PAGE, 0x86, 0x7D},		
{UNDOC_0x02_PAGE, 0x87, 0x81},		
{UNDOC_0x02_PAGE, 0x88, 0xab},		
{UNDOC_0x02_PAGE, 0x89, 0xbc},		
{UNDOC_0x02_PAGE, 0x8a, 0xac},		
{UNDOC_0x02_PAGE, 0x8b, 0xba},		
{UNDOC_0x02_PAGE, 0x8c, 0xad},		
{UNDOC_0x02_PAGE, 0x8d, 0xb8},		
{UNDOC_0x02_PAGE, 0x8e, 0xae},		
{UNDOC_0x02_PAGE, 0x8f, 0xb2},		
{UNDOC_0x02_PAGE, 0x90, 0xb3},		
{UNDOC_0x02_PAGE, 0x91, 0xb7},		
{UNDOC_0x02_PAGE, 0x92, 0x48},		
{UNDOC_0x02_PAGE, 0x93, 0x54},		
{UNDOC_0x02_PAGE, 0x94, 0x7D},		
{UNDOC_0x02_PAGE, 0x95, 0x81},		
{UNDOC_0x02_PAGE, 0x96, 0x7D},		
{UNDOC_0x02_PAGE, 0x97, 0x81},		
{UNDOC_0x02_PAGE, 0xa0, 0x02},		
{UNDOC_0x02_PAGE, 0xa1, 0x7B},		
{UNDOC_0x02_PAGE, 0xa2, 0x02},		
{UNDOC_0x02_PAGE, 0xa3, 0x7B},		
{UNDOC_0x02_PAGE, 0xa4, 0x7B},		
{UNDOC_0x02_PAGE, 0xa5, 0x02},		
{UNDOC_0x02_PAGE, 0xa6, 0x7B},		
{UNDOC_0x02_PAGE, 0xa7, 0x02},		
{UNDOC_0x02_PAGE, 0xa8, 0x85},		
{UNDOC_0x02_PAGE, 0xa9, 0x8C},		
{UNDOC_0x02_PAGE, 0xaa, 0x85},		
{UNDOC_0x02_PAGE, 0xab, 0x8C},		
{UNDOC_0x02_PAGE, 0xac, 0x10}, //Rx_pwr_off1_read
{UNDOC_0x02_PAGE, 0xad, 0x16}, //Rx_pwr_on1_read
{UNDOC_0x02_PAGE, 0xae, 0x10}, //Rx_pwr_off2_read
{UNDOC_0x02_PAGE, 0xaf, 0x16}, //Rx_pwr_on1_read
{UNDOC_0x02_PAGE, 0xb0, 0x99},		
{UNDOC_0x02_PAGE, 0xb1, 0xA3},		
{UNDOC_0x02_PAGE, 0xb2, 0xA4},		
{UNDOC_0x02_PAGE, 0xb3, 0xAE},		
{UNDOC_0x02_PAGE, 0xb4, 0x9B},		
{UNDOC_0x02_PAGE, 0xb5, 0xA2},		
{UNDOC_0x02_PAGE, 0xb6, 0xA6},		
{UNDOC_0x02_PAGE, 0xb7, 0xAC},		
{UNDOC_0x02_PAGE, 0xb8, 0x9B},		
{UNDOC_0x02_PAGE, 0xb9, 0x9F},		
{UNDOC_0x02_PAGE, 0xba, 0xA6},		
{UNDOC_0x02_PAGE, 0xbb, 0xAA},		
{UNDOC_0x02_PAGE, 0xbc, 0x9B},		
{UNDOC_0x02_PAGE, 0xbd, 0x9F},		
{UNDOC_0x02_PAGE, 0xbe, 0xA6},		
{UNDOC_0x02_PAGE, 0xbf, 0xaa},		
{UNDOC_0x02_PAGE, 0xc4, 0x2c},		
{UNDOC_0x02_PAGE, 0xc5, 0x43},		
{UNDOC_0x02_PAGE, 0xc6, 0x63},		
{UNDOC_0x02_PAGE, 0xc7, 0x79},		
{UNDOC_0x02_PAGE, 0xc8, 0x2d},		
{UNDOC_0x02_PAGE, 0xc9, 0x42},		
{UNDOC_0x02_PAGE, 0xca, 0x2d},		
{UNDOC_0x02_PAGE, 0xcb, 0x42},		
{UNDOC_0x02_PAGE, 0xcc, 0x64},		
{UNDOC_0x02_PAGE, 0xcd, 0x78},		
{UNDOC_0x02_PAGE, 0xce, 0x64},		
{UNDOC_0x02_PAGE, 0xcf, 0x78},		
{UNDOC_0x02_PAGE, 0xd0, 0x0a},		
{UNDOC_0x02_PAGE, 0xd1, 0x09},		
{UNDOC_0x02_PAGE, 0xd2, 0x20},		
{UNDOC_0x02_PAGE, 0xd3, 0x00},	
	
{UNDOC_0x02_PAGE, 0xd4, 0x06},		
{UNDOC_0x02_PAGE, 0xd5, 0x06},		
{UNDOC_0x02_PAGE, 0xd6, 0xd8},		
{UNDOC_0x02_PAGE, 0xd7, 0xd0},
		
{UNDOC_0x02_PAGE, 0xe0, 0xc4},		
{UNDOC_0x02_PAGE, 0xe1, 0xc4},		
{UNDOC_0x02_PAGE, 0xe2, 0xc4},		
{UNDOC_0x02_PAGE, 0xe3, 0xc4},		
{UNDOC_0x02_PAGE, 0xe4, 0x00},		
{UNDOC_0x02_PAGE, 0xe8, 0x80},		
{UNDOC_0x02_PAGE, 0xe9, 0x40},		
{UNDOC_0x02_PAGE, 0xea, 0x7f},		
{UNDOC_0x02_PAGE, 0xf0, 0x01}, //sram1_cfg
{UNDOC_0x02_PAGE, 0xf1, 0x01}, //sram2_cfg
{UNDOC_0x02_PAGE, 0xf2, 0x01}, //sram3_cfg
{UNDOC_0x02_PAGE, 0xf3, 0x01}, //sram4_cfg
{UNDOC_0x02_PAGE, 0xf4, 0x01}, //sram5_cfg

/////// PAGE 3 ///////
{UNDOC_0x02_PAGE, PAGEMODE, UNDOC_0x03_PAGE},
{UNDOC_0x03_PAGE, 0x10, 0x10},

/////// PAGE 10 START ///////
{UNDOC_0x03_PAGE, PAGEMODE, FORMAT_PAGE},
{FORMAT_PAGE, ISPCTL1, 0x07},
{FORMAT_PAGE, ISPCTL3, 0x30},
{FORMAT_PAGE, ISPCTL4, 0x0a},
{FORMAT_PAGE, ITUCTL, 0x15}, //0x00},

{FORMAT_PAGE, ITUSOF, 0x80}, // ITU656: SOF : SAV field (per Nexell)
{FORMAT_PAGE, ITUSOL, 0x80}, // ITU656: SOL : SAV field
{FORMAT_PAGE, ITUEOF, 0xb6}, // ITU656: EOF : EAV blank
{FORMAT_PAGE, ITUEOL, 0x9d}, // ITU656: EOL : EAV field

{FORMAT_PAGE, 0x30, 0x00},
{FORMAT_PAGE, 0x31, 0x00},
{FORMAT_PAGE, 0x32, 0x00},
{FORMAT_PAGE, 0x33, 0x00},

{FORMAT_PAGE, 0x34, 0x30},
{FORMAT_PAGE, 0x35, 0x00},
{FORMAT_PAGE, 0x36, 0x00},
{FORMAT_PAGE, 0x38, 0x00},
{FORMAT_PAGE, 0x3e, 0x58},
{FORMAT_PAGE, 0x3f, 0x00},
{FORMAT_PAGE, YOFS, 0x84},
{FORMAT_PAGE, DYOFS, 0x08},
{FORMAT_PAGE, CONTRAST, 0x84},

{FORMAT_PAGE, SATCTL, 0x67},
{FORMAT_PAGE, SATB, 0x90},
{FORMAT_PAGE, SATR, 0xa0},
{FORMAT_PAGE, AGSAT, 0x50},
{FORMAT_PAGE, 0x64,0x41},

{FORMAT_PAGE, SATTIMETH, 0x42},
{FORMAT_PAGE, SATOUTDEL, 0x20},

{FORMAT_PAGE, CBPOSSAT, 0x80}, //8a
{FORMAT_PAGE, CBNEGSAT, 0x84}, //74
{FORMAT_PAGE, CRPOSSAT, 0x80}, //7e //7a
{FORMAT_PAGE, CRNEGSAT, 0x80}, //8e

////////////////////////////////////////

/////// PAGE 11 START ///////
{FORMAT_PAGE, PAGEMODE, NOISE1_PAGE},
{NOISE1_PAGE, DLPFCTL1, 0x7f},
{NOISE1_PAGE, DLPFCTL2, 0x40},
{NOISE1_PAGE, 0x12, 0x0a}, // Blue Max-Filter Delete
{NOISE1_PAGE, 0x13, 0xbb},

{NOISE1_PAGE, LPFAGTHL_HI253, 0x31},
{NOISE1_PAGE, LPFAGTHH_HI253, 0x34},
{NOISE1_PAGE, LPFOUTTHL_HI253, 0x0f},
{NOISE1_PAGE, LPFOUTTHH_HI253, 0x10},
{NOISE1_PAGE, LPFYMEANTHL_HI253, 0x30},
{NOISE1_PAGE, LPFYMEANTHH_HI253, 0x32},

//Out2 D-LPF th
{NOISE1_PAGE, OUT2YBOUNDH, 0x70},
{NOISE1_PAGE, OUT2YBOUNDL, 0x10},
{NOISE1_PAGE, OUT2RATIO, 0x58},
{NOISE1_PAGE, OUT2THH, 0x09},
{NOISE1_PAGE, OUT2THM, 0x06},
{NOISE1_PAGE, OUT2THL, 0x03},

//Out1 D-LPF th
{NOISE1_PAGE, OUT1YBOUNDH, 0x70},
{NOISE1_PAGE, OUT1YBOUNDL, 0x18},
{NOISE1_PAGE, OUT1RATIO, 0x58},
{NOISE1_PAGE, OUT1THH, 0x09},
{NOISE1_PAGE, OUT1THM, 0x06},
{NOISE1_PAGE, OUT1THL, 0x03},

//Indoor D-LPF th
{NOISE1_PAGE, INYBOUNDH, 0x80},
{NOISE1_PAGE, INYBOUNDL, 0x18},
{NOISE1_PAGE, INRATIO, 0xa0}, //80
{NOISE1_PAGE, INTHH_HI253, 0x0c},
{NOISE1_PAGE, INTHM_HI253, 0x09},
{NOISE1_PAGE, INTHL_HI253, 0x06},

{NOISE1_PAGE, DARK1YBNDH, 0x80},
{NOISE1_PAGE, DARK1YBNDL, 0x18},
{NOISE1_PAGE, DARK1RATIO, 0xa0}, //80
{NOISE1_PAGE, DARK1THH, 0x12},
{NOISE1_PAGE, DARK1THM, 0x10},
{NOISE1_PAGE, DARK1THL, 0x10},

{NOISE1_PAGE, DARK2YBNDH, 0x90},
{NOISE1_PAGE, DARK2YBNDL, 0x40},
{NOISE1_PAGE, DARK2RATIO, 0x80},
{NOISE1_PAGE, DARK2THH, 0x13},
{NOISE1_PAGE, DARK2THM, 0x10},
{NOISE1_PAGE, DARK2THL, 0x11},

{NOISE1_PAGE, DARK3YBNDH, 0x80},
{NOISE1_PAGE, DARK3YBNDL, 0x30},
{NOISE1_PAGE, DARK3RATIO, 0x80},
{NOISE1_PAGE, DARK3THH, 0x13},
{NOISE1_PAGE, DARK3THM, 0x10},
{NOISE1_PAGE, DARK3THL, 0x13},

{NOISE1_PAGE, 0x54, 0x11},
{NOISE1_PAGE, 0x55, 0x17},
{NOISE1_PAGE, 0x56, 0x20},
{NOISE1_PAGE, 0x57, 0x01},
{NOISE1_PAGE, 0x58, 0x00},
{NOISE1_PAGE, 0x59, 0x00},

{NOISE1_PAGE, 0x5a, 0x1f}, //18
{NOISE1_PAGE, 0x5b, 0x00},
{NOISE1_PAGE, 0x5c, 0x00},

{NOISE1_PAGE, 0x60, 0x3f},
{NOISE1_PAGE, 0x62, 0x60},
{NOISE1_PAGE, 0x70, 0x06},

/////// PAGE 12 START ///////
{NOISE1_PAGE, PAGEMODE, NOISE2_PAGE},
{NOISE2_PAGE, YCLPFCTL1, 0x0f},
{NOISE2_PAGE, YCLPFCTL2, 0x0f},

{NOISE2_PAGE, 0x25, 0x00}, //0x30

{NOISE2_PAGE, 0x28,0x00},
{NOISE2_PAGE, 0x29,0x00},
{NOISE2_PAGE, 0x2a,0x00},

{NOISE2_PAGE, YCPRWTH, 0x50},
{NOISE2_PAGE, YCUNI1TH, 0x18},
{NOISE2_PAGE, YCUNI2TH_HI253, 0x32},
{NOISE2_PAGE, YCUNI3TH_HI253, 0x40},
{NOISE2_PAGE, YCNOR1TH_HI253, 0x50},
{NOISE2_PAGE, YCNOR2TH_HI253, 0x70},
{NOISE2_PAGE, YCNOR3TH_HI253, 0xa0},

{NOISE2_PAGE, 0x3b, 0x06},
{NOISE2_PAGE, 0x3c, 0x06},


//Out2 th
{NOISE2_PAGE, YCOUT2THH, 0xa0},
{NOISE2_PAGE, YCOUT2THL, 0x40},
{NOISE2_PAGE, YCOUT2STDH, 0xa0},
{NOISE2_PAGE, YCOUT2STDM, 0x90},
{NOISE2_PAGE, YCOUT2STDL, 0x90},
{NOISE2_PAGE, YCOUT2RAT, 0x80},

//Out1 th
{NOISE2_PAGE, YCOUT1THH, 0xb0},
{NOISE2_PAGE, YCOUT2THL, 0x55},
{NOISE2_PAGE, YCOUT1STDH, 0xa0},
{NOISE2_PAGE, YCOUT1STDM, 0x90},
{NOISE2_PAGE, YCOUT1STDL, 0x90},
{NOISE2_PAGE, YCOUT1RAT, 0x80},

//Indoor th
{NOISE2_PAGE, YCINTHH_HI253, 0xb0},
{NOISE2_PAGE, YCINTHL_HI253, 0x40},
{NOISE2_PAGE, YCINSTDH_HI253, 0x90},
{NOISE2_PAGE, YCINSTDM_HI253, 0x90},
{NOISE2_PAGE, YCINSTDL_HI253, 0xa0},
{NOISE2_PAGE, YCINRAT_HI253, 0x80},

//Dark1 th
{NOISE2_PAGE, YCDARK1THH_HI253, 0xb0},
{NOISE2_PAGE, YCDARK1THL_HI253, 0x60},
{NOISE2_PAGE, YCDARK1STDH_HI253, 0xc0},
{NOISE2_PAGE, YCDARK1STDM_HI253, 0xc0},
{NOISE2_PAGE, YCDARK1STDL_HI253, 0xc0},
{NOISE2_PAGE, YCDARK1RAT_HI253, 0x80},

//Dark2 th
{NOISE2_PAGE, YCDARK2THH, 0x90},
{NOISE2_PAGE, YCDARK2THL, 0x40},
{NOISE2_PAGE, YCDARK2STDH, 0xd0},
{NOISE2_PAGE, YCDARK2STDM, 0xd0},
{NOISE2_PAGE, YCDARK2STDL, 0xe0},
{NOISE2_PAGE, YCDARK2RAT, 0x80},

//Dark3 th
{NOISE2_PAGE, YCDARK3THH, 0x88},
{NOISE2_PAGE, YCDARK3THL, 0x40},
{NOISE2_PAGE, YCDARK3STDH, 0xe0},
{NOISE2_PAGE, YCDARK3STDM, 0xe0},
{NOISE2_PAGE, YCDARK3STDL, 0xe0},
{NOISE2_PAGE, YCDARK3RAT, 0x80},

{NOISE2_PAGE, 0x70, 0x15},
{NOISE2_PAGE, 0x71, 0x01}, //Don't Touch register

{NOISE2_PAGE, 0x72, 0x18},
{NOISE2_PAGE, 0x73, 0x01}, //Don't Touch register

{NOISE2_PAGE, 0x74, 0x25},
{NOISE2_PAGE, 0x75, 0x15},


{NOISE2_PAGE, DPCCTL, 0x5d}, //DPC
{NOISE2_PAGE, 0x91, 0x88},		
{NOISE2_PAGE, 0x98, 0x7d},		
{NOISE2_PAGE, 0x99, 0x28},		
{NOISE2_PAGE, 0x9A, 0x14},		
{NOISE2_PAGE, 0x9B, 0xc8},		
{NOISE2_PAGE, 0x9C, 0x02},		
{NOISE2_PAGE, 0x9D, 0x1e},		
{NOISE2_PAGE, 0x9E, 0x28},		
{NOISE2_PAGE, 0x9F, 0x07},		
{NOISE2_PAGE, 0xA0, 0x32},		
{NOISE2_PAGE, 0xA4, 0x04},		
{NOISE2_PAGE, 0xA5, 0x0e},		
{NOISE2_PAGE, 0xA6, 0x0c},		
{NOISE2_PAGE, 0xA7, 0x04},		
{NOISE2_PAGE, 0xA8, 0x3c},		

{NOISE2_PAGE, 0xAA, 0x14},		
{NOISE2_PAGE, 0xAB, 0x11},		
{NOISE2_PAGE, 0xAC, 0x0f},		
{NOISE2_PAGE, 0xAD, 0x16},		
{NOISE2_PAGE, 0xAE, 0x15},		
{NOISE2_PAGE, 0xAF, 0x14},		

{NOISE2_PAGE, 0xB1, 0xaa},		
{NOISE2_PAGE, 0xB2, 0x96},		
{NOISE2_PAGE, 0xB3, 0x28},		
//{NOISE2_PAGE, 0xB6,read}, only//dpc_flat_thres
//{NOISE2_PAGE, 0xB7,read}, only//dpc_grad_cnt
{NOISE2_PAGE, 0xB8, 0x78},		
{NOISE2_PAGE, 0xB9, 0xa0},		
{NOISE2_PAGE, 0xBA, 0xb4},		
{NOISE2_PAGE, 0xBB, 0x14},		
{NOISE2_PAGE, 0xBC, 0x14},		
{NOISE2_PAGE, 0xBD, 0x14},		
{NOISE2_PAGE, 0xBE, 0x64},		
{NOISE2_PAGE, 0xBF, 0x64},		
{NOISE2_PAGE, 0xC0, 0x64},		
{NOISE2_PAGE, 0xC1, 0x64},		
{NOISE2_PAGE, 0xC2, 0x04},		
{NOISE2_PAGE, 0xC3, 0x03},		
{NOISE2_PAGE, 0xC4, 0x0c},		
{NOISE2_PAGE, 0xC5, 0x30},		
{NOISE2_PAGE, 0xC6, 0x2a},		
{NOISE2_PAGE, 0xD0, 0x0c}, //CI Option/CI DPC
{NOISE2_PAGE, 0xD1, 0x80},		
{NOISE2_PAGE, 0xD2, 0x67},		
{NOISE2_PAGE, 0xD3, 0x00},		
{NOISE2_PAGE, 0xD4, 0x00},		
{NOISE2_PAGE, 0xD5, 0x02},		
{NOISE2_PAGE, 0xD6, 0xff},		
{NOISE2_PAGE, 0xD7, 0x18},	

/////// PAGE 13 START ///////
{NOISE2_PAGE, PAGEMODE, EDGE_PAGE},
//Edge
{EDGE_PAGE, EDGECTL1, 0xcb},
{EDGE_PAGE, EDGECTL2, 0x7b},
{EDGE_PAGE, EDGECTL3, 0x07},
{EDGE_PAGE, EDGECTL5_HI253, 0x00},

{EDGE_PAGE, EDGENGAIN, 0x15},
{EDGE_PAGE, EDGEPGAIN, 0x13},
{EDGE_PAGE, 0x22, 0x33},
{EDGE_PAGE, EDGEHCLIP1TH, 0x05},
{EDGE_PAGE, EDGEHCLIP2TH, 0x09},

{EDGE_PAGE, EDGELCLIPTH, 0x0a},

{EDGE_PAGE, EDGELCLIPLMT, 0x18},
{EDGE_PAGE, 0x27, 0x30},
{EDGE_PAGE, EDGETIMETH_HI253, 0x12},
{EDGE_PAGE, EDGEAGTH_HI253, 0x50},

//Low clip th
{EDGE_PAGE, 0x2b, 0x00}, //Out2 02
{EDGE_PAGE, 0x2c, 0x00}, //Out1 02 //01
{EDGE_PAGE, EDGELCLIPTH, 0x06},
{EDGE_PAGE, 0x2d, 0x0c},
{EDGE_PAGE, 0x2e, 0x12},
{EDGE_PAGE, 0x2f, 0x12},

//Out2 Edge
{EDGE_PAGE, 0x50, 0x18}, //0x10 //0x16
{EDGE_PAGE, 0x51, 0x1c}, //0x14 //0x1a
{EDGE_PAGE, 0x52, 0x1a}, //0x12 //0x18
{EDGE_PAGE, 0x53, 0x14}, //0x0c //0x12
{EDGE_PAGE, 0x54, 0x17}, //0x0f //0x15
{EDGE_PAGE, 0x55, 0x14}, //0x0c //0x12

//Out1 Edge          //Edge
{EDGE_PAGE, 0x56, 0x18}, //0x10 //0x16
{EDGE_PAGE, 0x57, 0x1c}, //0x13 //0x1a
{EDGE_PAGE, 0x58, 0x1a}, //0x12 //0x18
{EDGE_PAGE, 0x59, 0x14}, //0x0c //0x12
{EDGE_PAGE, 0x5a, 0x17}, //0x0f //0x15
{EDGE_PAGE, 0x5b, 0x14}, //0x0c //0x12

//Indoor Edge
{EDGE_PAGE, 0x5c, 0x0a},
{EDGE_PAGE, 0x5d, 0x0b},
{EDGE_PAGE, 0x5e, 0x0a},
{EDGE_PAGE, 0x5f, 0x08},
{EDGE_PAGE, 0x60, 0x09},
{EDGE_PAGE, 0x61, 0x08},

//Dark1 Edge
{EDGE_PAGE, 0x62, 0x08},
{EDGE_PAGE, 0x63, 0x08},
{EDGE_PAGE, 0x64, 0x08},
{EDGE_PAGE, 0x65, 0x06},
{EDGE_PAGE, 0x66, 0x06},
{EDGE_PAGE, 0x67, 0x06},

//Dark2 Edge
{EDGE_PAGE, 0x68, 0x07},
{EDGE_PAGE, 0x69, 0x07},
{EDGE_PAGE, 0x6a, 0x07},
{EDGE_PAGE, 0x6b, 0x05},
{EDGE_PAGE, 0x6c, 0x05},
{EDGE_PAGE, 0x6d, 0x05},

//Dark3 Edge
{EDGE_PAGE, 0x6e, 0x07},
{EDGE_PAGE, 0x6f, 0x07},
{EDGE_PAGE, 0x70, 0x07},
{EDGE_PAGE, 0x71, 0x05},
{EDGE_PAGE, 0x72, 0x05},
{EDGE_PAGE, 0x73, 0x05},

//2DY
{EDGE_PAGE, EDGE2DCTL1, 0xfd},
{EDGE_PAGE, EDGE2DCTL2, 0x1f},
{EDGE_PAGE, EDGE2DCTL3, 0x05},
{EDGE_PAGE, EDGE2DCTL4, 0x31},

{EDGE_PAGE, EDGE2DNGAIN, 0x05},
{EDGE_PAGE, EDGE2DPGAIN, 0x05},
{EDGE_PAGE, 0x92, 0x33},
{EDGE_PAGE, EDGE2DLCLIPLMT, 0x30},
{EDGE_PAGE, EDGE2DHCLIP1TH, 0x03},
{EDGE_PAGE, EDGE2DHCLIP2TH, 0x14},
{EDGE_PAGE, 0x97, 0x20},
{EDGE_PAGE, 0x99, 0x20},

{EDGE_PAGE, EDGE2DLCOUT2N, 0x01},
{EDGE_PAGE, EDGE2DLCOUT2P, 0x02},
{EDGE_PAGE, EDGE2DLCOUT1N, 0x01},
{EDGE_PAGE, EDGE2DLCOUT1P, 0x02},
{EDGE_PAGE, EDGE2DLCINN, 0x05},
{EDGE_PAGE, EDGE2DLCINP, 0x05},
{EDGE_PAGE, EDGE2DLCD1N, 0x07},
{EDGE_PAGE, EDGE2DLCD1P, 0x08},
{EDGE_PAGE, EDGE2DLCD2N, 0x07},
{EDGE_PAGE, EDGE2DLCD2P, 0x08},
{EDGE_PAGE, EDGE2DLCD3N, 0x07},
{EDGE_PAGE, EDGE2DLCD3P, 0x08},

//Out2 
{EDGE_PAGE, 0xb0, 0x22},
{EDGE_PAGE, 0xb1, 0x2a},
{EDGE_PAGE, 0xb2, 0x28},
{EDGE_PAGE, 0xb3, 0x22},
{EDGE_PAGE, 0xb4, 0x2a},
{EDGE_PAGE, 0xb5, 0x28},

//Out1 
{EDGE_PAGE, 0xb6, 0x22},
{EDGE_PAGE, 0xb7, 0x2a},
{EDGE_PAGE, 0xb8, 0x28},
{EDGE_PAGE, 0xb9, 0x22},
{EDGE_PAGE, 0xba, 0x2a},
{EDGE_PAGE, 0xbb, 0x28},

//Indoor 
{EDGE_PAGE, 0xbc, 0x25},
{EDGE_PAGE, 0xbd, 0x2a},
{EDGE_PAGE, 0xbe, 0x27},
{EDGE_PAGE, 0xbf, 0x25},
{EDGE_PAGE, 0xc0, 0x2a},
{EDGE_PAGE, 0xc1, 0x27},

//Dark1
{EDGE_PAGE, 0xc2, 0x1e},
{EDGE_PAGE, 0xc3, 0x24},
{EDGE_PAGE, 0xc4, 0x20},
{EDGE_PAGE, 0xc5, 0x1e},
{EDGE_PAGE, 0xc6, 0x24},
{EDGE_PAGE, 0xc7, 0x20},

//Dark2
{EDGE_PAGE, 0xc8, 0x18},
{EDGE_PAGE, 0xc9, 0x20},
{EDGE_PAGE, 0xca, 0x1e},
{EDGE_PAGE, 0xcb, 0x18},
{EDGE_PAGE, 0xcc, 0x20},
{EDGE_PAGE, 0xcd, 0x1e},

//Dark3 
{EDGE_PAGE, 0xce, 0x18},
{EDGE_PAGE, 0xcf, 0x20},
{EDGE_PAGE, 0xd0, 0x1e},
{EDGE_PAGE, 0xd1, 0x18},
{EDGE_PAGE, 0xd2, 0x20},
{EDGE_PAGE, 0xd3, 0x1e},

/////// PAGE 14 START ///////
{EDGE_PAGE, PAGEMODE, LENS_PAGE},
{LENS_PAGE, LENSCTL1, 0x11},

{LENS_PAGE, Gb_XCEN, 0x80}, // GX
{LENS_PAGE, Gb_YCEN, 0x80}, // GY
{LENS_PAGE, R_XCEN, 0x80}, // RX
{LENS_PAGE, R_YCEN, 0x80}, // RY
{LENS_PAGE, B_XCEN, 0x80}, // BX
{LENS_PAGE, B_YCEN, 0x80}, // BY

{LENS_PAGE, XCEN, 0x60}, //X 60 //a0
{LENS_PAGE, YCEN, 0x80}, //Y

{LENS_PAGE, LENSRGAIN_HI253, 0x80},
{LENS_PAGE, LENSGGAIN_HI253, 0x80},
{LENS_PAGE, LENSBGAIN_HI253, 0x80},

{LENS_PAGE, 0x30, 0xc8},
{LENS_PAGE, 0x31, 0x2b},
{LENS_PAGE, 0x32, 0x00},
{LENS_PAGE, 0x33, 0x00},
{LENS_PAGE, 0x34, 0x90},

{LENS_PAGE, LENSRP0, 0x48}, //31
{LENS_PAGE, LENSGrP0, 0x34}, //23 //32
{LENS_PAGE, LENSBP0, 0x29}, //1a //27
{LENS_PAGE, LENSGbP0, 0x34}, //23 //32

/////// PAGE 15 START ///////
{LENS_PAGE, PAGEMODE, COLOR_PAGE},
{COLOR_PAGE, CMCCTL, 0x0f},

//Rstep H 16
//Rstep L 14
{COLOR_PAGE, CMCOFSGH, 0x42}, //CMCOFSGH_Day //4c
{COLOR_PAGE, CMCOFSGM, 0x32}, //CMCOFSGM_CWF //3c
{COLOR_PAGE, CMCOFSGL, 0x24}, //CMCOFSGL_A //2e
{COLOR_PAGE, CMCSIGN, 0x2f}, //CMC SIGN

//CMC_Default_CWF
{COLOR_PAGE, CMC11, 0x8f},
{COLOR_PAGE, CMC12, 0x59},
{COLOR_PAGE, CMC13, 0x0a},
{COLOR_PAGE, CMC21, 0x24},
{COLOR_PAGE, CMC22, 0x7c},
{COLOR_PAGE, CMC23, 0x18},
{COLOR_PAGE, CMC31, 0x02},
{COLOR_PAGE, CMC32, 0x37},
{COLOR_PAGE, CMC33, 0x75}, //86

//CMC OFS L_A
{COLOR_PAGE, CMCOFSL11, 0x92},
{COLOR_PAGE, CMCOFSL12, 0x1b},
{COLOR_PAGE, CMCOFSL13, 0x89},
{COLOR_PAGE, CMCOFSL21, 0x81},
{COLOR_PAGE, CMCOFSL22, 0x00},
{COLOR_PAGE, CMCOFSL23, 0x01},
{COLOR_PAGE, CMCOFSL31, 0x89},
{COLOR_PAGE, CMCOFSL32, 0x9e},
{COLOR_PAGE, CMCOFSL33, 0x28},

//CMC POFS H_DAY
{COLOR_PAGE, CMCOFSH11, 0x02},
{COLOR_PAGE, CMCOFSH12, 0x82},
{COLOR_PAGE, CMCOFSH13, 0x00},
{COLOR_PAGE, CMCOFSH21, 0x07},
{COLOR_PAGE, CMCOFSH22, 0x11},
{COLOR_PAGE, CMCOFSH23, 0x98},
{COLOR_PAGE, CMCOFSH31, 0x00},
{COLOR_PAGE, CMCOFSH32, 0x0b},
{COLOR_PAGE, CMCOFSH33, 0x8b},

{COLOR_PAGE, 0x80, 0x03},
{COLOR_PAGE, 0x85, 0x40},
{COLOR_PAGE, 0x87, 0x02},
{COLOR_PAGE, 0x88, 0x00},
{COLOR_PAGE, 0x89, 0x00},
{COLOR_PAGE, 0x8a, 0x00},

/////// PAGE 16 START ///////
{COLOR_PAGE, PAGEMODE, GAMMA_PAGE},
{GAMMA_PAGE, GMACTL, 0x31},
{GAMMA_PAGE, 0x18, 0x5e},// Double_AG 5e->37
{GAMMA_PAGE, 0x19, 0x5d},// Double_AG 5e->36
{GAMMA_PAGE, 0x1a, 0x0e},
{GAMMA_PAGE, 0x1b, 0x01},
{GAMMA_PAGE, 0x1c, 0xdc},
{GAMMA_PAGE, 0x1d, 0xfe},
{GAMMA_PAGE, 0x1e,0x00},
{GAMMA_PAGE, 0x1f,0x00},
{GAMMA_PAGE, 0x20,0x00},
{GAMMA_PAGE, 0x21,0x00},
{GAMMA_PAGE, 0x22,0x00},
{GAMMA_PAGE, 0x23,0x00},
{GAMMA_PAGE, 0x24,0x00},
{GAMMA_PAGE, 0x25,0x00},
{GAMMA_PAGE, 0x26,0x00},
{GAMMA_PAGE, 0x27,0x00},
{GAMMA_PAGE, 0x28,0x00},
{GAMMA_PAGE, 0x29,0x00},
{GAMMA_PAGE, 0x2a,0x00},
{GAMMA_PAGE, 0x2b,0x00},
{GAMMA_PAGE, 0x2c,0x00},
{GAMMA_PAGE, 0x2d,0x00},
{GAMMA_PAGE, 0x2e,0x00},
{GAMMA_PAGE, 0x2f,0x00},
{GAMMA_PAGE, GGMA0, 0x00},
{GAMMA_PAGE, GGMA1, 0x09},
{GAMMA_PAGE, GGMA2, 0x1f},
{GAMMA_PAGE, GGMA3, 0x3a},
{GAMMA_PAGE, GGMA4, 0x63},
{GAMMA_PAGE, GGMA5, 0x80},
{GAMMA_PAGE, GGMA6, 0x97},
{GAMMA_PAGE, GGMA7, 0xaa},
{GAMMA_PAGE, GGMA8, 0xb9},
{GAMMA_PAGE, GGMA9, 0xc6},
{GAMMA_PAGE, GGMA10, 0xd0},
{GAMMA_PAGE, GGMA11, 0xd8},
{GAMMA_PAGE, GGMA12, 0xe1},
{GAMMA_PAGE, GGMA13, 0xe7},
{GAMMA_PAGE, GGMA14, 0xed},
{GAMMA_PAGE, GGMA15, 0xf0},
{GAMMA_PAGE, GGMA16, 0xf5},
{GAMMA_PAGE, GGMA17, 0xf7},
{GAMMA_PAGE, GGMA18, 0xf8},
{GAMMA_PAGE, 0x43,0x00},
{GAMMA_PAGE, RGMA0, 0x00},
{GAMMA_PAGE, RGMA1, 0x09},
{GAMMA_PAGE, RGMA2, 0x1f},
{GAMMA_PAGE, RGMA3, 0x3a},
{GAMMA_PAGE, RGMA4, 0x63},
{GAMMA_PAGE, RGMA5, 0x80},
{GAMMA_PAGE, RGMA6, 0x97},
{GAMMA_PAGE, RGMA7, 0xaa},
{GAMMA_PAGE, RGMA8, 0xb9},
{GAMMA_PAGE, RGMA9, 0xc6},
{GAMMA_PAGE, RGMA10, 0xd0},
{GAMMA_PAGE, RGMA11, 0xd8},
{GAMMA_PAGE, RGMA12, 0xe1},
{GAMMA_PAGE, RGMA13, 0xe7},
{GAMMA_PAGE, RGMA14, 0xed},
{GAMMA_PAGE, RGMA15, 0xf0},
{GAMMA_PAGE, RGMA16, 0xf5},
{GAMMA_PAGE, RGMA17, 0xf7},
{GAMMA_PAGE, RGMA18, 0xf8},
//BGMA
{GAMMA_PAGE, BGMA0, 0x00},
{GAMMA_PAGE, BGMA1, 0x09},
{GAMMA_PAGE, BGMA2, 0x1f},
{GAMMA_PAGE, BGMA3, 0x3a},
{GAMMA_PAGE, BGMA4, 0x63},
{GAMMA_PAGE, BGMA5, 0x80},
{GAMMA_PAGE, BGMA6, 0x97},
{GAMMA_PAGE, BGMA7, 0xaa},
{GAMMA_PAGE, BGMA8, 0xb9},
{GAMMA_PAGE, BGMA9, 0xc6},
{GAMMA_PAGE, BGMA10, 0xd0},
{GAMMA_PAGE, BGMA11, 0xd8},
{GAMMA_PAGE, BGMA12, 0xe1},
{GAMMA_PAGE, BGMA13, 0xe7},
{GAMMA_PAGE, BGMA14, 0xed},
{GAMMA_PAGE, BGMA15, 0xf0},
{GAMMA_PAGE, BGMA16, 0xf5},
{GAMMA_PAGE, BGMA17, 0xf7},
{GAMMA_PAGE, BGMA18, 0xf8},

/////// PAGE 17 START ///////
{GAMMA_PAGE, PAGEMODE, FLICKER_PAGE},
{FLICKER_PAGE, 0x10, 0xf7},
{FLICKER_PAGE, 0xc4, 0x5a},
{FLICKER_PAGE, 0xc5, 0x4b},

/////// PAGE 20 START ///////
{FLICKER_PAGE, PAGEMODE, AUTOEXP_PAGE},
{AUTOEXP_PAGE, AECTL2, 0x1c},
{AUTOEXP_PAGE, 0x18, 0x30},
{AUTOEXP_PAGE, 0x1a, 0x08},
{AUTOEXP_PAGE, AEFRAMECTL1, 0x01},
{AUTOEXP_PAGE, 0x21,0x30},
{AUTOEXP_PAGE, 0x22,0x10},
{AUTOEXP_PAGE, 0x23,0x00},
{AUTOEXP_PAGE, 0x24,0x00},

{AUTOEXP_PAGE, AEFINECTL1, 0xe7},
{AUTOEXP_PAGE, AEFINECTL2, 0x0d},
{AUTOEXP_PAGE, AEFINECTL3, 0xff},
{AUTOEXP_PAGE, AEFINECTL4, 0x34},
{AUTOEXP_PAGE, AEFINECTL5, 0xc3},
{AUTOEXP_PAGE, AEFINECTL6, 0xcf},
{AUTOEXP_PAGE, AEFINECTL7, 0x33},
{AUTOEXP_PAGE, 0x30,0x78},
{AUTOEXP_PAGE, 0x32,0x03},
{AUTOEXP_PAGE, 0x33,0x2e},
{AUTOEXP_PAGE, 0x34,0x30},
{AUTOEXP_PAGE, 0x35,0xd4},
{AUTOEXP_PAGE, 0x36,0xfe},
{AUTOEXP_PAGE, 0x37,0x32},
{AUTOEXP_PAGE, 0x38,0x04},

{AUTOEXP_PAGE, 0x39, 0x22}, //AE_escapeC10
{AUTOEXP_PAGE, 0x3a, 0xde}, //AE_escapeC11

{AUTOEXP_PAGE, 0x3b, 0x22}, //AE_escapeC1
{AUTOEXP_PAGE, 0x3c, 0xde}, //AE_escapeC2

{AUTOEXP_PAGE, 0x50, 0x45},
{AUTOEXP_PAGE, 0x51,0x88},

{AUTOEXP_PAGE, 0x56,0x03},
{AUTOEXP_PAGE, 0x57,0xf7},
{AUTOEXP_PAGE, 0x58,0x14},
{AUTOEXP_PAGE, 0x59,0x88},
{AUTOEXP_PAGE, 0x5a,0x04},

//New Weight For Samsung
{AUTOEXP_PAGE, AEWGT1, 0xff},
{AUTOEXP_PAGE, AEWGT2, 0xff},
{AUTOEXP_PAGE, AEWGT3, 0xea},
{AUTOEXP_PAGE, AEWGT4, 0xab},
{AUTOEXP_PAGE, AEWGT5, 0xea},
{AUTOEXP_PAGE, AEWGT6, 0xab},
{AUTOEXP_PAGE, AEWGT7, 0xeb},
{AUTOEXP_PAGE, AEWGT8, 0xeb},
{AUTOEXP_PAGE, AEWGT9, 0xeb},
{AUTOEXP_PAGE, AEWGT10, 0xeb},
{AUTOEXP_PAGE, AEWGT11, 0xea},
{AUTOEXP_PAGE, AEWGT12, 0xab},
{AUTOEXP_PAGE, AEWGT13, 0xea},
{AUTOEXP_PAGE, AEWGT14, 0xab},
{AUTOEXP_PAGE, AEWGT15, 0xff},
{AUTOEXP_PAGE, AEWGT16, 0xff},
{AUTOEXP_PAGE, YLVL, 0x48},
{AUTOEXP_PAGE, 0x71,0x89},

// haunting control
{AUTOEXP_PAGE, 0x76,0x43},
{AUTOEXP_PAGE, 0x77,0xe2},
{AUTOEXP_PAGE, YTH1, 0x23},
{AUTOEXP_PAGE, YTH2HI, 0x42}, //Yth2 //46
{AUTOEXP_PAGE, 0x7a,0x23},
{AUTOEXP_PAGE, 0x7b,0x22},
{AUTOEXP_PAGE, 0x7d,0x23},

{AUTOEXP_PAGE, EXPTIMEH, 0x01}, //EXP Normal 33.33 fps
{AUTOEXP_PAGE, EXPTIMEM, 0x8b},
{AUTOEXP_PAGE, EXPTIMEL, 0x82},
{AUTOEXP_PAGE, EXPMINH, 0x01}, //EXPMin 11250.00 fps
{AUTOEXP_PAGE, EXPMINL, 0x2c}, 
{AUTOEXP_PAGE, EXPMAXH, 0x03}, //EXP Max fps
{AUTOEXP_PAGE, EXPMAXM, 0x17},
{AUTOEXP_PAGE, EXPMAXL, 0x04},
{AUTOEXP_PAGE, EXP100H, 0x83}, //EXP100 
{AUTOEXP_PAGE, EXP100L, 0xd6}, 
{AUTOEXP_PAGE, EXP120H, 0x6d}, //EXP120 
{AUTOEXP_PAGE, EXP120L, 0x92}, 
#if (IS_PLL_1_5X)
{AUTOEXP_PAGE, EXPFIXH, 0x02}, //EXP Fix 15.00 fps @ PLL 1.5x
{AUTOEXP_PAGE, EXPFIXM, 0x93},
{AUTOEXP_PAGE, EXPFIXL, 0x2E},
#elif (IS_PLL_2X)
{AUTOEXP_PAGE, EXPFIXH, 0x01}, // Fixed 30FPS @ PLL 2x
{AUTOEXP_PAGE, EXPFIXM, 0xb7},
{AUTOEXP_PAGE, EXPFIXL, 0x74},
#else
{AUTOEXP_PAGE, EXPFIXH, 0x03}, //EXP Fix 15.00 fps
{AUTOEXP_PAGE, EXPFIXM, 0x6e}, 
{AUTOEXP_PAGE, EXPFIXL, 0xe8}, 
#endif
{AUTOEXP_PAGE, EXPLMTH, 0x09}, //EXP Limit 1406.25 fps 
{AUTOEXP_PAGE, EXPLMTL, 0x60}, 
{AUTOEXP_PAGE, EXPUNITH, 0x01}, //EXP Unit 
{AUTOEXP_PAGE, EXPUNITL, 0x2c}, 
{AUTOEXP_PAGE, 0xa0, 0x03},
{AUTOEXP_PAGE, 0xa1, 0xa9},
{AUTOEXP_PAGE, 0xa2, 0x80},

{AUTOEXP_PAGE, AG, 0x18},
{AUTOEXP_PAGE, AGMIN, 0x14},
{AUTOEXP_PAGE, AGMAX, 0xe0},
{AUTOEXP_PAGE, AGLVLH, 0x18},
{AUTOEXP_PAGE, AGTH1, 0x1a},
{AUTOEXP_PAGE, AGTH2, 0x44},
{AUTOEXP_PAGE, AGBTH1, 0x2f},
{AUTOEXP_PAGE, AGBTH2, 0x28},
{AUTOEXP_PAGE, AGBTH3, 0x25},
{AUTOEXP_PAGE, AGBTH4, 0x22},
{AUTOEXP_PAGE, AGBTH5, 0x21},
{AUTOEXP_PAGE, AGBTH6, 0x20},
{AUTOEXP_PAGE, AGBTH7, 0x1f},
{AUTOEXP_PAGE, AGBTH8, 0x1f},

{AUTOEXP_PAGE, AGSKY_HI253, 0x14},
{AUTOEXP_PAGE, 0xc1,0x1f},
{AUTOEXP_PAGE, 0xc2,0x1f},
{AUTOEXP_PAGE, AGLVLL_HI253, 0x18},
{AUTOEXP_PAGE, AGTIMETH, 0x10},

{AUTOEXP_PAGE, DGMAX, 0x80},
{AUTOEXP_PAGE, DGMIN, 0x40},

/////// PAGE 22 START ///////
{AUTOEXP_PAGE, PAGEMODE, AUTOWB_PAGE},
{AUTOWB_PAGE, AWBCTL1, 0xe9},
{AUTOWB_PAGE, AWBCTL2, 0x2e},
{AUTOWB_PAGE, 0x19,0x01},
{AUTOWB_PAGE, 0x20,0x30},
{AUTOWB_PAGE, 0x21,0x80},
{AUTOWB_PAGE, 0x24,0x01},
{AUTOWB_PAGE, 0x25, 0x00}, //7f New Lock Cond & New light stable

{AUTOWB_PAGE, ULVL, 0x80},
{AUTOWB_PAGE, VLVL, 0x80},
{AUTOWB_PAGE, UVTH1, 0x11},
{AUTOWB_PAGE, UVTH2, 0x34},

{AUTOWB_PAGE, YRANGE, 0xf7},
{AUTOWB_PAGE, CDIFF, 0x55},
{AUTOWB_PAGE, CSUM2, 0x33},
{AUTOWB_PAGE, 0x43,0xf7},
{AUTOWB_PAGE, 0x44,0x55},
{AUTOWB_PAGE, 0x45,0x44},
{AUTOWB_PAGE, WHTPXLTH, 0x00},
{AUTOWB_PAGE, 0x50,0xb2},
{AUTOWB_PAGE, 0x51,0x81},
{AUTOWB_PAGE, 0x52,0x98},

{AUTOWB_PAGE, RGAIN, 0x40},
{AUTOWB_PAGE, GGAIN, 0x20},
{AUTOWB_PAGE, BGAIN, 0x2e},
{AUTOWB_PAGE, RMAX, 0x5e},
{AUTOWB_PAGE, RMIN, 0x16},
{AUTOWB_PAGE, BMAX, 0x5e},
{AUTOWB_PAGE, BMIN, 0x22},
{AUTOWB_PAGE, RMAXM, 0x49},//0x40
{AUTOWB_PAGE, RMINM, 0x39},//0x30
{AUTOWB_PAGE, BMAXM, 0x37},
{AUTOWB_PAGE, BMINM, 0x28},
{AUTOWB_PAGE, RMAXB, 0x41},//0x40
{AUTOWB_PAGE, RMINB, 0x39},//0x33
{AUTOWB_PAGE, BMAXB, 0x34},
{AUTOWB_PAGE, BMINB, 0x28},
{AUTOWB_PAGE, BGAINPARA1, 0x53},
{AUTOWB_PAGE, BGAINPARA2, 0x52},
{AUTOWB_PAGE, BGAINPARA3, 0x51},
{AUTOWB_PAGE, BGAINPARA4, 0x4e},
{AUTOWB_PAGE, BGAINPARA5, 0x4a},
{AUTOWB_PAGE, BGAINPARA6, 0x45},
{AUTOWB_PAGE, BGAINPARA7, 0x3d},
{AUTOWB_PAGE, BGAINPARA8, 0x31},
{AUTOWB_PAGE, BGAINPARA9, 0x28},
{AUTOWB_PAGE, BGAINPARA10, 0x24},
{AUTOWB_PAGE, BGAINPARA11, 0x20},
{AUTOWB_PAGE, BGAINPARA12, 0x20},
{AUTOWB_PAGE, BGAINBND1, 0xee},
{AUTOWB_PAGE, BGAINBND2, 0xee},
{AUTOWB_PAGE, RAINTH1, 0x48},
{AUTOWB_PAGE, RAINTH2, 0x38},
{AUTOWB_PAGE, RAINTH3, 0x30},
{AUTOWB_PAGE, RDELTA1, 0x60},
{AUTOWB_PAGE, BDELTA1, 0x34},
{AUTOWB_PAGE, RDELTA2, 0x6f},
{AUTOWB_PAGE, BDELTA2, 0xff},
{AUTOWB_PAGE, AWBEXPLMT1, 0x14},
{AUTOWB_PAGE, AWBEXPLMT2, 0x2c},
{AUTOWB_PAGE, AWBEXPLMT3, 0xcf},

{AUTOWB_PAGE, 0xad,0x40},
{AUTOWB_PAGE, 0xae,0x4a},
{AUTOWB_PAGE, 0xaf,0x28},
{AUTOWB_PAGE, 0xb0,0x26},
{AUTOWB_PAGE, 0xb1,0x00},
{AUTOWB_PAGE, 0xb4,0xea},
{AUTOWB_PAGE, 0xb8,0xa0},
{AUTOWB_PAGE, 0xb9,0x00},

// PAGE 20
{AUTOWB_PAGE, PAGEMODE, AUTOEXP_PAGE}, //page 20
{AUTOEXP_PAGE, AECTL1, 0x9c}, //ae on

// PAGE 22
{AUTOEXP_PAGE, PAGEMODE, AUTOWB_PAGE}, //page 22
{AUTOWB_PAGE, AWBCTL1, 0xe9}, //awb on

// PAGE 0
{AUTOWB_PAGE, PAGEMODE, WINDOW_PAGE},
{WINDOW_PAGE, PLLCTL1, PLLX(0x00)}, //PLL On
{WINDOW_PAGE, PLLCTL1, PLLX(0x70)}, //PLLx2

{WINDOW_PAGE, PAGEMODE, WINDOW_PAGE}, // Dummy 750us
{WINDOW_PAGE, PAGEMODE, WINDOW_PAGE},
{WINDOW_PAGE, PAGEMODE, WINDOW_PAGE},
{WINDOW_PAGE, PAGEMODE, WINDOW_PAGE},
{WINDOW_PAGE, PAGEMODE, WINDOW_PAGE},
{WINDOW_PAGE, PAGEMODE, WINDOW_PAGE},
{WINDOW_PAGE, PAGEMODE, WINDOW_PAGE},
{WINDOW_PAGE, PAGEMODE, WINDOW_PAGE},
{WINDOW_PAGE, PAGEMODE, WINDOW_PAGE},
{WINDOW_PAGE, PAGEMODE, WINDOW_PAGE},

{WINDOW_PAGE, PAGEMODE, WINDOW_PAGE}, // Page 0
{WINDOW_PAGE, PWRCTL, 0x50}, //0xc0}, // Sleep Off 0xf8->0x50 for solve green line issue

};


/*
END
[END]
*/

/* ********* capacivite multi-touch device driver.  Diodes ********************************************************************
 Change Log

10/23/14 by Shelby V5.4.
	Merge in LF changes.
	1. Version info is read in NVD code. Removing LF version reading.

5/29/14 by Wayne  V5.3 
     Correct the building warning: at line 187, 568 and 1198

5/28/14 by Eddy  V5.2 
     Call getVersion() only once and reuse the information to avoid calling reset() many times
     Check checksum only if the version number is equal or larger than 23 
    
5/27/14  by  Eddy V4
     Add function to control values in single touch as different from last one to "Slot Mode" 
     Close Debug Message
     Fix Some compile warning
     Add Boundary Limit


5/27/14  by  Eddy   V3.6
     Add function to control values in single touch as different from last one
     Version strings: B1 B2 B3 B4    
     B1=x0 : No Adjust
     B1=x1 : to Adjust

 
5/26/14  by  Eddy  V3.2
     Add additional two kinds of report mode, use  byte 1(B1) in the CTP FW version strings to identify which mode will be actived.
     Version strings: B1 B2 B3 B4    
     B1=0x : Mode 1--- Single Touch + Type A Multi Touch
     B1=1x : Mode 2--- Single Touch
     B1=2x : Mode 3--- Type B Multi-Touch with Single Touch Emulation

 2/14/14
	Some versions of CTP returns in 480x272 format so there is no conversion needed. Driver needs to match CTP FW, by compile time paramter 
         LF_SCREEN_SIZE: if 0, original/std format; if 1, new/test (480x272) format	

 ** *****************************************************************************************************************/

#define SET_DPC_VCOM
//#define REVISED_FLAG
#define LF_SCREEN_SIZE 	0    // Whether to use Original screen size and translate in driver
//#define DEBUG_PRINT
//#define DEBUG_PRINT1   //More critical output

#ifndef REVISED_FLAG
#define LF_SPECIAL_SETTING 
#endif
#include <linux/platform_device.h>
#include <linux/delay.h>
#include <linux/module.h>
#include <linux/interrupt.h>
#include <linux/slab.h>
#include <linux/i2c.h>
//#include <linux/input.h>
//#include <linux/ihex.h>
#include <linux/firmware.h>
#include <linux/types.h>
#include <linux/device.h>
#include <asm/uaccess.h>
#include <linux/gfp.h>

#ifndef REVISED_FLAG
#include <mach/soc.h>
#endif

#include <mach/tu_drvs.h>

#define DIODES_SYSFS_ENTRY      //Echo/Cat Entry Opening
#define DIODES_FIRMWARE_UPDATE  //Firmware Update Function Opening
#define DIODES_AUTO_UPDATE      //Auto Update Function Opening

#define DIODES_REPORT_CHECKSUM		 //Enable Touch Report Check Sum Check

#ifdef DIODES_AUTO_UPDATE
#define DIODES_FIRMWARE_UPDATE
#include "tu_update.h"
#endif

#include <linux/input/mt.h>

static bool revert_x = 0;
static bool revert_y = 0;
static short report_pressure = 40; // 40 = default pressure to report

//static int fwVersion[4] = {0}; /* used to store fw version x.x.x.x */
//static char *fw_version = "0x0";
static char dummy[16] = {0};
static char *fw_version = dummy;

module_param(revert_x, bool, 0644);
MODULE_PARM_DESC(revert_x, "Revert x-axis. (0=disable, 1=enable)");
module_param(revert_y, bool, 0644);
MODULE_PARM_DESC(revert_y, "Revert y-axis. (0=disable, 1=enable)");
module_param(report_pressure, short, 0644);
MODULE_PARM_DESC(report_pressure, "Pressure value to report to input-event system. Range: 0-255, 0=raw, default=40");
static short report_rate = 80;
static __u64 next_touch_ns = 0;
module_param(report_rate, short, 0644);
MODULE_PARM_DESC(report_rate, "Throttle touch report rate (default:80)");
module_param(fw_version, charp, 0444);
MODULE_PARM_DESC(fw_version, "Displays firmware version");

struct i2c_dev {
	struct list_head list;
	struct i2c_adapter *adap;
	struct device *dev;
};

static struct i2c_driver tu_i2c_ts_driver;
//static struct class *i2c_dev_class;
static LIST_HEAD( i2c_dev_list);
//SZSZ static DEFINE_SPINLOCK( i2c_dev_list_lock);

static struct workqueue_struct *tu_wq;

//SZSZ struct undefine bypass for now
//----------------20140319 CONFIG_PM-------------------------
#undef CONFIG_PM
//-----------------------------------------------------------


//----------------20140319 CONFIG_PM----------------------------
#ifdef CONFIG_PM

#include <linux/earlysuspend.h>
static void tu_early_suspend(struct early_suspend *h);
static void tu_late_resume(struct early_suspend *h);

#else
// handle the situation when CONFIG_PM is not defined
#endif

//------------------------------------------------------

#define TU_DRIVER_NAME 		TU_I2C_NAME
#define MAX_TRACKING_ID 	POINT_STRUCT_SIZE

#define COORD_INTERPRET(MSB_BYTE, LSB_BYTE) \
		(MSB_BYTE << 8 | LSB_BYTE)

struct tu_data {
	__u16 	x, y, w, id;
	struct i2c_client *client;
	struct input_dev *dev;
	struct delayed_work work;
//------------------20140319 CONFIG_PM------------------------
#ifdef CONFIG_PM
	struct early_suspend early_suspend;
#endif
//-----------------------------------------------------------
	int irq;
};

struct point_node_t {
	unsigned char active;
	unsigned char finger_id;
	unsigned int posx;
	unsigned int posy;
};

//static float x_scale = (AA_X_SIZE/480.0);
//static float y_scale = (AA_Y_SIZE/272.0);

//static struct point_node_t point_slot[MAX_FINGER_NUM * 2];
//static int bootloader_delay = 1500 * 5;
//volatile int bootloader_irq = 0; // 0: no, 1: falling
//static const int BTIME = 200;

struct i2c_client *g_client = 0;
struct tu_platform_data *g_pdata = 0;


//==================#define DIODES_FIRMWARE_UPDATE =================================
#ifdef DIODES_FIRMWARE_UPDATE

#define UPDATE_BINARY_SIZE 1031
#define BLMODE_NONE  0
#define BLMODE_GOBL  1
#define BLMODE_ERASE 2
#define BLMODE_WRITE 3
#define BLMODE_JUMP  4
#define BLMODE_CHECKSUM  5
#undef	COMMAND_COUNT		/* This was defined in .h file */
#define	COMMAND_COUNT		15
#define	COMMAND_BYTES_BL	5
#define	COMMAND_BYTES_AP	4
#define	COMMAND_BYTES_MX	COMMAND_BYTES_BL

static int   		tu_blmode = BLMODE_NONE;	//Bootloader Mode
static char* 		tu_pfwbuf;         //FW Buffer Pointer
static int   		tu_fwsize;         //FW Size
int g_VerifyCheckSum = 0;
int g_CheckSumErrorFlag = 0;
unsigned char g_Checksum[2];
unsigned char g_FwVersion[4];
unsigned char g_Version[10];

unsigned char *p_data;
int PkgCnt = 0;
int PkgIdx = 0;
int BigIdx = 0;
int DataLen = 0;
int FWBuf_Idx = 0;

#ifdef DIODES_AUTO_UPDATE
unsigned char auto_update_start = 0;
#endif

unsigned char gFlag; // upper 4 bit-> 0: MT 1: ABS 2:Slot
                            // lower 4 bits -> 0: no +-1, 1: +-1

static u_int8_t fw_update_cmd[COMMAND_COUNT][COMMAND_BYTES_MX] = 
{
	{0x0E, 0x11, 0x00, 0x00, 0x00},	//Soft Reset
	{0xEB, 0xAA, 0x00, 0x00, 0x00},	//Enter BL Mode
	{0xEB, 0x10, 0x00, 0x00, 0x00},	//Erase Flash
	{0xEB, 0x91, 0x00, 0x00, 0x00},	//BL Jump App Cmd 2( New BL)
	{0xEB, 0x70, 0x00, 0x00, 0x00},	//BL Jump App Cmd 1( Old BL )

};

/*
 * SZSZ
 * DPC_VCOM setting used to be in spi_lcd.c in mach/soc folder, which was by passed in newer code.
 * This is setting is specific to NVD panels. To avoid the difficulties of identifying the panel
 *   type early in boot, decided to put the code in CTP driver.
 */

#ifdef SET_DPC_VCOM

//defined in linux-3.4.5/arch/arm/mach-nxp4330/prototype/base/nx_type.h
// typedef unsigned int U32;
// typedef int CBOOL;                          ///< boolean type is 32bits signed integer
// nxp_soc_gpio_set_out_value(g_pdata->gpio_reset,  (g_pdata->reset_cfg)); // reset
// void    NX_GPIO_SetOutputValue  ( U32 ModuleIndex, U32 BitNumber, CBOOL Value );
// void    NX_GPIO_SetOutputValue  ( unsigned int ModuleIndex, U32 BitNumber, CBOOL Value );

#define    NX_GPIO_SetOutputValue( ModuleIndex, BitNumber, Value ) \
			nxp_soc_gpio_set_out_value((ModuleIndex)*32+(BitNumber), Value)

static int gpio_port  = 4;  // Port E
//static int gpio_pin = 15;   // Bit 15, ~LCD_CS, already set up.

static const int setNVD_VCOM = 1;

static void spi_lcd_bitbang(u32 val, int len)
{
    int i;
    int gpio_clk = 14;  // SCK_R
    int gpio_frm = 15;  // Frame/~LCD_CS
    int gpio_txd = 19;  // SDI

    NX_GPIO_SetOutputValue(gpio_port, gpio_frm, 0);

    for (i = 0; i < len; i++) {
        NX_GPIO_SetOutputValue(gpio_port, gpio_txd, (val >> (len-1-i)) & 1);
        NX_GPIO_SetOutputValue(gpio_port, gpio_clk, 0);
        udelay(1);
        NX_GPIO_SetOutputValue(gpio_port, gpio_clk, 1);
        udelay(1);
    }

    NX_GPIO_SetOutputValue(gpio_port, gpio_frm, 1);
}


static void spi_lcd_write24(u8 reg, u16 val)
{
    spi_lcd_bitbang((0x70 << 16) | reg, 24);
    spi_lcd_bitbang((0x72 << 16) | val, 24);
    return;
}

static void spi_lcd_setup(void)
{
    // HX8257
    /*
     * Set VCOM based on Jack Power's recommendation
     */
    if (setNVD_VCOM) {
        printk("Set VCOM to 0x3722\n");
        spi_lcd_write24(0x06, 0x3722);
    }
}

#endif // SET_DPC_VCOM


int fw_InitPackage( struct i2c_client *client)
{
    DataLen = tu_fwsize;	//Transfer FW Size
    p_data  = tu_pfwbuf;	//Transfer FW Buffer Pointer

    //Loop To Read File & Load to CHip
    printk("Diodes TSC Update : FW Packages Initialize\n");

//----------------------20140319 DEBUG_PRINT--------------------------------
#ifdef DEBUG_PRINT1
    printk("Diodes TSC Update : DataLen = %d\n", DataLen);
#endif
//-------------------------------------------------------------------------

    //Prepeare Buffer Parameters
    g_FwVersion[0] = p_data[10];
    g_FwVersion[1] = p_data[11];
    g_FwVersion[2] = p_data[12];
    g_FwVersion[3] = p_data[13];
 
    g_Checksum[0] = p_data[14];
    g_Checksum[1] = p_data[15];

    p_data += 16;
    PkgCnt = (DataLen-16)/13;
    PkgIdx = 0;			//Index for 13 byte package in fw array
    FWBuf_Idx = 0;		//Index for fw buffer( byte )
    BigIdx = 0;
	
    if( PkgCnt<0 )
    {
	printk( "Diodes TSC Update : FW Data Size Error(%d)\n", PkgCnt );
	return -1;
    }
    else
    {	
    	printk( "Diodes TSC Update : Total Package Count %d in FW Array\n", PkgCnt );
    }	


    return 0;
}

int fw_WritePackage(struct i2c_client *client)	//48 Bytes Download
{
	int j;
	int ret;
        unsigned char FWBuffer[UPDATE_BINARY_SIZE];
	int FWBuf_Idx;

	//struct tu_data *tu = dev_get_drvdata(dev);

	//Prepare Data
        FWBuf_Idx = 0;
	memset( FWBuffer, 0xff, sizeof(FWBuffer) );
			
	//Prepare Header
	FWBuffer[0] = 0xEA;
	FWBuffer[1] = 0x15;
			
	FWBuffer[2] = p_data[2];
	FWBuffer[3] = p_data[3];

	FWBuffer[4] = 0x04;
	FWBuffer[5] = 0x00;
			
	FWBuffer[6] = 0x00;
//-----------------20140319 DEBUG_PRINT-------------------
#ifdef DEBUG_PRINT1	
	printk( "Diodes TSC Update : Data(%d),AddH=%x,AddL=%x\n",BigIdx,FWBuffer[2], FWBuffer[3]);
#endif
//-----------------------------------------------------------------------
	FWBuf_Idx = 7;
			
	while( FWBuf_Idx<UPDATE_BINARY_SIZE )
	{
		if( PkgIdx<PkgCnt )
		{
			for( j=5; j<13; j++ )
			{
				FWBuffer[FWBuf_Idx] = p_data[j];
				FWBuf_Idx++;
			}	
					
			//Increase Small Package Index & Pointer			
			p_data += 13;
			PkgIdx++;						
		}
		else
		{
			break;
		}
	}

      FWBuffer[4] = ((FWBuf_Idx-7)>>8)&0xFF;
      FWBuffer[5] = ((FWBuf_Idx-7))&0xFF;
//--------------------20140319 DEBUG_PRINT---------------------
#ifdef DEBUG_PRINT1
	printk( "Write Package 0x%x%x Count\n", FWBuffer[4], FWBuffer[5] );
#endif
//-------------------------------------------------------------		
   //Send I2C Data
    ret = i2c_master_send(client, FWBuffer, UPDATE_BINARY_SIZE);
			
    if(ret < 0)
    {
	printk("Diodes TSC Update : Write Package Failed %d!!!!!\n", PkgIdx);
	return -1;
    }	
    BigIdx++;  

    if( PkgIdx>=PkgCnt )
    {
	tu_blmode = BLMODE_CHECKSUM;
	printk( "Diodes TSC Update : Total Package Count Processed : %d\n", PkgIdx );
        return 0;
    }
    else
    {
       return 1;	//Go on next Package
    }
}

#endif

//Chip Reset, Can change to trigger Reset Pinposcheck
void fw_ChipReset(struct i2c_client *client)	
{
    printk( "Diodes TSC Update : Chip Hard Reset\n" );
#ifdef _SMART_201_EVB_
    RESETPIN_CFG;
    RESETPIN_SET0;
#else
    // handle the situation while _SMART_201_EVB_ is not defined
    //Reset Implement : Set to Low
    nxp_soc_gpio_set_out_value(g_pdata->gpio_reset,  (g_pdata->reset_cfg)); // reset
	// msleep (160); //quadruple x 10
	//msleep (16); //quadruple
	// mdelay (16); //quadruple
#endif
    mdelay(10);
#ifdef _SMART_201_EVB_
    RESETPIN_SET1;
#else
    nxp_soc_gpio_set_out_value(g_pdata->gpio_reset, !(g_pdata->reset_cfg)); // unreset/ena
#endif
    //Delay to wait reboot
    mdelay(7);
}

#ifdef DIODES_FIRMWARE_UPDATE

void fw_UpdateStart(struct i2c_client *client)
{
    //struct tu_data *tu = dev_get_drvdata(dev);
    int ret;

    printk("Diodes TSC Update : Start to Update FW Process\n");

    //Chip Reset
    fw_ChipReset( client );

    //Enter Bootloader
    ret = i2c_master_send(client, fw_update_cmd[1], COMMAND_BYTES_BL);

    if( ret<0 )
    {
         printk( "Diodes TSC Update : Enter Bootloader Error!!\n" );
         return;
    }

    //Initial Package
    fw_InitPackage(client);

    //Wait IRQ
    tu_blmode = BLMODE_ERASE;
}

void fw_UpdateErase(struct i2c_client *client)
{
    //struct tu_data *tu = dev_get_drvdata(dev);
    int ret;
    mdelay(3);

    printk("Diodes TSC Update : Start Chip Erase Process\n");

    //Erase Flash
    ret = i2c_master_send(client, fw_update_cmd[2], COMMAND_BYTES_BL);

    if( ret<0 )
    {
         printk( "Diodes TSC Update : Chip Erase Error!!\n" );
         return;
    }

    //Wait IRQ
    tu_blmode = BLMODE_WRITE;
}

void fw_UpdateJump( struct i2c_client *client )
{
    //struct tu_data *tu = dev_get_drvdata(dev);
    //int ret;
    fw_ChipReset(client);//Modified 2014 0411


/*
    //struct tu_data *tu = dev_get_drvdata(dev);
    int ret;

    printk("Diodes TSC Update : Jump to Touch\n");

    //Erase Flash
    ret = i2c_master_send(client, fw_update_cmd[3], COMMAND_BYTES_BL);
    
    if( ret<0 )
    {
        printk("Diodes TSC Update : Jump to Touch Failed\n");
        return;
    }*/
}

void fw_UpdateFinish(struct i2c_client *client)
{
    //Reset FSM
    tu_blmode = BLMODE_NONE;


#ifdef  DIODES_AUTO_UPDATE
	if(auto_update_start == 1) {
		auto_update_start = 0;
		return;
	}    
#endif
    //Free Resources
    if (tu_pfwbuf != NULL) {
	kfree( tu_pfwbuf );
	tu_pfwbuf = NULL;
    }

}

void fw_CheckSum(struct i2c_client *client){
	int ret;
	unsigned char cmdbuf[10];

	mdelay(10);
	cmdbuf[0] = 0xEB;
	cmdbuf[1] = 0x51;
	cmdbuf[2] = 0x00;
	cmdbuf[3] = 0x60;
	cmdbuf[4] = 0x77;
	ret = i2c_master_send(client, cmdbuf, 5);
	if (ret != 5) {
	    printk( "fw_CheckSum(): _i2c_master_send CheckSum failed(), ret=%d\n", ret);
	    return;
	}
	tu_blmode = BLMODE_JUMP;
}

void fw_FSM(struct i2c_client *client)
{
    switch(tu_blmode)
    {
     g_VerifyCheckSum = 0;
     case BLMODE_GOBL:
     {
        fw_UpdateStart(client);
	break;
     }
     case BLMODE_ERASE:
     {
	fw_UpdateErase(client);
	break;
     }
     case BLMODE_WRITE:
     {
	fw_WritePackage(client);
	break;
     }
     case BLMODE_CHECKSUM:
     {
	 fw_CheckSum(client);
	 g_VerifyCheckSum = 1;
	 break;
     }
     case BLMODE_JUMP:
     {
	fw_UpdateJump(client);
        fw_UpdateFinish(client);
	break;
     }
     case BLMODE_NONE:
     {
	break;
     }
     default:
     {
	break;
     }
    };
}

#endif
//==================#End define DIODES_FIRMWARE_UPDATE ===========================


//================== # define DIODES_SYSFS_ENTRY================================
#ifdef DIODES_SYSFS_ENTRY

void getVersion(unsigned char* buf) {
    unsigned char cmdbuf[10];
    int ret;

    mdelay(100);
    fw_ChipReset(g_client);
    mdelay(100);

    // read version command
    cmdbuf[0] = 0x0C;
    cmdbuf[1] = 0x19;
    cmdbuf[2] = 0x00;
    cmdbuf[3] = 0x00;
    ret = i2c_master_send(g_client, cmdbuf, 4);

    if (ret != 4) {
	printk( "getVersion(): _i2c_master_send failed(), ret=%d\n", ret);
    }

    ret = i2c_master_recv(g_client, buf, 8);
    if (ret != 8) {
	    dev_err(&g_client->dev, "getVersion(): %s: i2c_master_recv failed(), ret=%d\n",
		__func__, ret);
    }

    mdelay(10);

    cmdbuf[0] = 0x0E;
    cmdbuf[1] = 0x01;
    cmdbuf[2] = 0x00;
    cmdbuf[3] = 0x00;

   ret = i2c_master_send(g_client, cmdbuf, 4);
   if (ret != 4) {
	printk( "getVersion(): _i2c_master_send enable failed(), ret=%d\n", ret);
   }

   
}

int showCat(char *buf) {

   unsigned char rdbuf[10];
   int len;

#ifdef DIODES_FIRMWARE_UPDATE

    	int percentage = 0;
	if (tu_blmode != BLMODE_NONE) {
		if(PkgCnt == 0) {
		    PkgCnt = 1;
		}
		percentage = 100 * PkgIdx / PkgCnt;
		len = snprintf(buf, PAGE_SIZE, "Diodes TSC Firmware Version_%d.%d.%d.%d Update Progress: %d%%\n",
					(int)g_FwVersion[0], (int)g_FwVersion[1], (int)g_FwVersion[2], (int)g_FwVersion[3], percentage);

		if (PkgIdx == PkgCnt) {
//------------------20140319 DEBUG_PRINT------------------------------------------------------
#ifdef DEBUG_PRINT
		    printk("Firmware Update Package Index=%d Count=%d\n", PkgIdx, PkgCnt);
#endif
//----------------------------------------------------------------------------------------------
	   	    if (g_VerifyCheckSum == 1 && g_CheckSumErrorFlag == 1) {
		        printk("Diodes TSC Firmware Update Checksum Failed!\n");
		    }
		}
	} else {
		    getVersion(rdbuf);
		    len = snprintf(buf, PAGE_SIZE, "Diodes TSC Firmware Version_%d.%d.%d.%d \n", rdbuf[4], rdbuf[5], rdbuf[6], rdbuf[7]);
	}
    #else
		getVersion(rdbuf);
		len = snprintf(buf, PAGE_SIZE, "Diodes TSC Firmware Version_%d.%d.%d.%d \n", rdbuf[4], rdbuf[5], rdbuf[6], rdbuf[7]);
	
    #endif

   return len;
}

static ssize_t  update_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
    int len = showCat(buf);
    return len;
}


struct ihex_binrec {
	 __be32 addr;
	 __be16 len;
	 uint8_t data[0];
} __attribute__((packed));

static inline int ihex_validate_fw(const struct firmware *fw)
{
	const struct ihex_binrec *rec;
	size_t ofs = 0;

	while (ofs <= fw->size - sizeof(*rec)) {
	  rec = (void *)&fw->data[ofs];

	  /* Zero length marks end of records */
	  if (!be16_to_cpu(rec->len))
		  return 0;

	  /* Point to next record... */
	  ofs += (sizeof(*rec) + be16_to_cpu(rec->len) + 3) & ~3;
	}
	return -EINVAL;
}

static void process_async_firmware(const struct firmware *fw, void *context)
{
#ifdef DIODES_FIRMWARE_UPDATE
        int error;
#ifdef DEBUG_PRINT
	int i;
#endif
         if (!fw) 
         {
		printk("Diodes Tsc: firmware is null!");
		return;
         }

          error = ihex_validate_fw(fw);
          if (error) {
		printk("Diodes Tsc: firmware is invalidate!");
 		return;
   	  }

//--------------------------20140319 DEBUG_PRINT--------------------------
#ifdef DEBUG_PRINT
          for (i=0; i < 50; i++) {
	     printk("%x ", fw->data[i]);
	  }

          printk("Diodes Tsc: final data: \n");
	  for (i=fw->size - 50; i < fw->size; i++) {
	     printk("%x ", fw->data[i]);
	  }
 	printk("Diodes Tsc: firmware size = %d.\n", fw->size);
#endif
//-------------------------------------------------------------------------

    	  tu_pfwbuf = kmalloc(fw->size, GFP_KERNEL);
    	  memcpy( tu_pfwbuf, fw->data, fw->size );    
    	  tu_fwsize = fw->size;
	  tu_blmode = BLMODE_GOBL;
	  mdelay(15);
	  fw_FSM(g_client);

         //mutex_lock(&g_client->cmd_mutex);
         //ims_pcu_handle_firmware_update(pcu, fw);
         //mutex_unlock(&g_client->cmd_mutex);
 
         release_firmware(fw);
 
 //out:
         //complete(&g_client->async_firmware_done);
#endif
}

static ssize_t update_store(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{

#ifdef DIODES_FIRMWARE_UPDATE
    int error = 0;
    // interrupt update procedures
    if (tu_blmode != BLMODE_NONE) {
	tu_blmode = BLMODE_NONE;
//----------------20140319-------------------------
	/*if (buf != NULL) {
		kfree(buf);
		buf = NULL;
	}*/
//-------------------------------------------------
	return count;
    }

    if(buf != NULL && count != 0) {
//-------------------20140319 DEBUG_PRINT-------------------------------
#ifdef DEBUG_PRINT
        printk("Diodes Tsc: Firmware name=%s count=%d\n", buf, count);
#endif
//-------------------------------------------------------------------------
	error = request_firmware_nowait(THIS_MODULE, true, buf, &g_client->dev, GFP_KERNEL, NULL, process_async_firmware);
	if(error) {
	    printk("Request firmware %s error :%d\n", buf, error);
	}
	return count;
  } 
#endif

  return count;
}

static DEVICE_ATTR(diodes_fs_entry, S_IRUGO | S_IWUSR, update_show, update_store);

static struct attribute *dev_attrs[] = {
	&dev_attr_diodes_fs_entry.attr,
	NULL
};

static const struct attribute_group dev_attr_grp = {
	.attrs = dev_attrs,
};

#endif
//==================end # define DIODES_SYSFS_ENTRY================================

//==================#define DIODES_AUTO_UPDATE ================================

#ifdef  DIODES_AUTO_UPDATE
void autoUpdate(struct i2c_client *client) {
   //unsigned char cmdbuf[10];
   //unsigned char rdbuf[10];
   int goUpdate = 0;
   //int ret;
   //getVersion(rdbuf);
   //fw_ChipReset(g_client);
   //mdelay(100);
/*
   cmdbuf[0] = 0x0C;
   cmdbuf[1] = 0x19;
   cmdbuf[2] = 0x00;
   cmdbuf[3] = 0x00;
   ret = i2c_master_send(client, cmdbuf, 4);
   if (ret != 4) {
	printk( "autoUpdate(): _i2c_master_send failed(), ret=%d\n", ret);
   }

    ret = i2c_master_recv(client, rdbuf, 8);
    if (ret != 8) {
	    dev_err(&g_client->dev, "autoUpdate(): %s: i2c_master_recv failed(), ret=%d\n",
		__func__, ret);
    }

*/
//---------------------------------20140319 DEBUG_PRINT------------------------------------------------------------------
#ifdef DEBUG_PRINT1
    printk("Auto Update rdbuf:%d.%d.%d.%d, flash:%d.%d.%d.%d\n",g_Version[4],g_Version[5],g_Version[6],g_Version[7], tu_firmware[10],tu_firmware[11],tu_firmware[12],tu_firmware[13]);
#endif
//----------------------------------------------------------------------------------------------------

    //if ((rdbuf[4] == tu_firmware[10]) && (rdbuf[5] == tu_firmware[11])) {
    if (g_Version[5] == tu_firmware[11]) {
	
	if(g_Version[6] < tu_firmware[12]) {
	    goUpdate = 1;
	} else if ((g_Version[6] == tu_firmware[12]) && (g_Version[7] < tu_firmware[13])){
	    goUpdate = 1;
	}
    }
    else {
        goUpdate = 1;
    }
   if(goUpdate == 0){
	printk("Diodes Tsc: No need to do auto update.\n");
 	return;
   }
  printk("Diodes Tsc : AUTO_UPDATE_START\n");
  tu_pfwbuf = tu_firmware;
  //memcpy( tu_pfwbuf, fw->data, fw->size );    
  tu_fwsize = sizeof(tu_firmware);
  tu_blmode = BLMODE_GOBL;
  fw_FSM(g_client);
  auto_update_start = 1;
}


#endif
//==================#define DIODES_AUTO_UPDATE ================================


////////////////////////////////////////////////////////////////////////////////////////////////
int x_old = 0;
int y_old = 0;
int gCount = 0;

void adjustData(int* x, int* y, int maxW, int maxH) 
{
	if(gFlag & 0x0F) 
	{ // 0: no +-1, 1: +-1ys

//		if ( (*x == x_old) && (*y == y_old) ) 
//		{
//#ifdef DEBUG_PRINT1
		//printk("Diodes Tsc: adjust Data x_ori=%d y_ori=%d gCount=%d\n", *x, *y, gCount);
//#endif
		if(*x == x_old)
		{
			if(*x > maxW/2) {// ABS_X
			    *x = *x-1;
			} else {
			    *x = *x+1;
			}
		}

		if(*y == y_old)
		{
			if(*y > maxH/2) {//ABS_Y
			    *y = *y -1;
			} else {
			    *y = *y +1;
			}
		}
		
//#ifdef DEBUG_PRINT1
		//printk("Diodes Tsc: adjust Data x_adjust=%d y_adjust=%d\n", *x, *y);
//#endif	
//	    }
    }
}	


/*
void adjustData(int* x, int* y, int maxW, int maxH) {
	if(gFlag & 0x0F) { // 0: no +-1, 1: +-1ys
	    if ( (*x == x_old) && (*y == y_old) ) {
#ifdef DEBUG_PRINT1
		printk("Diodes Tsc: adjust Data x_ori=%d y_ori=%d gCount=%d\n", *x, *y, gCount);
#endif
		if(*x > maxW/2) {// ABS_X
		    *x = *x-1;
		} else {
		    *x = *x+1;
		}
		if(*y > maxH/2) {//ABS_Y
		    *y = *y -1;
		} else {
		    *y = *y +1;
		}
#ifdef DEBUG_PRINT1
		printk("Diodes Tsc: adjust Data x_adjust=%d y_adjust=%d\n", *x, *y);
#endif	
	    }
    }
}	
*/

static inline void tu_report_slot(struct tu_data *tu, u_int8_t touch_num ) 
{
	int x, y;
		
	if (LF_SCREEN_SIZE) {
		x = tu->x;
		y = tu->y;
		if (touch_num == 0) 
		{
			if (gCount < 3) {
		        adjustData(&x, &y, AA_X_SIZE, AA_Y_SIZE);
			    gCount++;
			}
		}
		
	} else {
		x = ((int)tu->x)*480/AA_X_SIZE;
		y = ((int)tu->y)*272/AA_Y_SIZE;

		if (touch_num == 0)
		{
			if ( gCount < 3) {
		    	 adjustData(&x, &y, 480, 272);
		     	gCount++;
			}
		}
	}
	
	if (touch_num == 0)
	{
		x_old = x; // save previous 3 points
		y_old = y;
	}

	input_mt_slot(tu->dev, tu->id-1 );
	input_mt_report_slot_state(tu->dev, MT_TOOL_FINGER, tu->w );

	if (tu->w) {
/*		
	    if (LF_SCREEN_SIZE) {
//		input_report_abs(tu->dev, ABS_MT_POSITION_X, tu->x);
//		input_report_abs(tu->dev, ABS_MT_POSITION_Y, tu->y);
		input_report_abs(tu->dev, ABS_MT_POSITION_X, x);
		input_report_abs(tu->dev, ABS_MT_POSITION_Y, y);

		} else {
//		    input_report_abs(tu->dev, ABS_MT_POSITION_X, ((int)tu->x)*480/AA_X_SIZE);
//		    input_report_abs(tu->dev, ABS_MT_POSITION_Y, ((int)tu->y)*272/AA_Y_SIZE);
		  input_report_abs(tu->dev, ABS_MT_POSITION_X, x);
		  input_report_abs(tu->dev, ABS_MT_POSITION_Y, y);

		}
*/
		input_report_abs(tu->dev, ABS_MT_POSITION_X, x);
		input_report_abs(tu->dev, ABS_MT_POSITION_Y, y);

		input_report_abs(tu->dev, ABS_MT_PRESSURE, report_pressure);
		//input_report_abs(tu->dev, ABS_MT_TOUCH_MAJOR, tu->w);
	}
}

static inline void tu_report(struct tu_data *tu, u_int8_t touch_num)
{
	int x, y;
	if (touch_num == 0) {
		/// throttle
		struct timespec ts;
		__u64 curr_ns;
		ktime_get_ts(&ts);
		curr_ns = timespec_to_ns(&ts);
		if(curr_ns < next_touch_ns)
			return;
		if(report_rate < 1)
			report_rate = 1;
		if(report_rate > 100)
			report_rate = 100;
		next_touch_ns = curr_ns + NSEC_PER_SEC / report_rate;
		/// throttle


		if (LF_SCREEN_SIZE) {
			x = tu->x;
			y = tu->y;
			if (gCount < 3) {
		            adjustData(&x, &y, AA_X_SIZE, AA_Y_SIZE);
			    gCount++;
			}
		} else {
			x = ((int)tu->x)*480/AA_X_SIZE;
			y = ((int)tu->y)*272/AA_Y_SIZE;
			if ( gCount < 3) {
			     adjustData(&x, &y, 480, 272);
			     gCount++;
			}
		}
		
		input_report_abs(tu->dev, ABS_X, x);
		input_report_abs(tu->dev, ABS_Y, y);
		input_report_key(tu->dev, BTN_TOUCH, 1);
		input_report_abs(tu->dev, ABS_PRESSURE, report_pressure);

		x_old = x; // save previous 3 points
		y_old = y;
	}

	if (((gFlag >> 4) & 0x0F) == 0) { // 0: mix 1:single
		//input_report_abs(tu->dev, ABS_MT_TOUCH_MAJOR, tu->w);
		
		if (touch_num != 0) {
		   if (LF_SCREEN_SIZE) {
			x = tu->x;
			y = tu->y;
		    } else {
			x = ((int)tu->x)*480/AA_X_SIZE;
			y = ((int)tu->y)*272/AA_Y_SIZE;
		    }
		}
		
		input_report_abs(tu->dev, ABS_MT_POSITION_X, x);
		input_report_abs(tu->dev, ABS_MT_POSITION_Y, y);
		input_report_abs(tu->dev, ABS_MT_PRESSURE, report_pressure);
		input_report_abs(tu->dev, ABS_MT_TRACKING_ID, tu->id);
		//input_mt_sync(tu->dev);
	}
}

#ifdef DIODES_REPORT_CHECKSUM
#define VALID_TOUCH_MAX 28
#endif


static void tu_i2c_work(struct work_struct *work) {

	u_int8_t idx_x_low;
	u_int8_t idx_x_hi;
	u_int8_t idx_y_low;
	u_int8_t idx_y_hi;
	u_int8_t idx_id_st;

	u_int8_t touchcnt;

	struct tu_data *tu =
			container_of(work, struct tu_data, work.work);
	unsigned char read_buf[REPORT_BUF_SIZE];
	int ret, i;
#ifdef DIODES_REPORT_CHECKSUM
	int checksum;
#endif
	static unsigned int prev_key = 0;


#ifdef DEBUG_PRINT
	printk( "Schedule Work Start\n" );
#endif

#ifdef DIODES_FIRMWARE_UPDATE
	if (tu_blmode != BLMODE_NONE) 
	{
		// verify checksum
		ret = i2c_master_recv(tu->client, read_buf, 5);
		if (ret != 5 ) {
			dev_err(&tu->client->dev, "Test : %s: i2c_master_recv failed(), ret=%d\n",
				__func__, ret);
		}

		if (g_VerifyCheckSum == 1) {
		     if ((g_Checksum[0] == read_buf[3]) && (g_Checksum[1] == read_buf[4])) {
			g_CheckSumErrorFlag = 0;
			
			printk("Diodes TSC Update Checksum Match! Checksum= %x %x\n", read_buf[4], read_buf[3]);
		     } else {
			g_CheckSumErrorFlag = 1;
			printk("Diodes TSC Update Checksum Failed! Binary= %x %x, Flash=%x %x\n", g_Checksum[1], g_Checksum[0], read_buf[4], read_buf[3]);
		     }
		     g_VerifyCheckSum = 0;
		}
	mdelay(15);
	fw_FSM(tu->client);
	return;
	}
#endif

	//I2C Read Data
	ret = i2c_smbus_read_i2c_block_data(tu->client,
							0x00, REPORT_BUF_SIZE, read_buf);
#ifdef DIODES_REPORT_CHECKSUM
	if (g_Version[7] >= 23) {
		checksum = 0;
		for(i=0; i<VALID_TOUCH_MAX; i++) {
			checksum += read_buf[i];
		}
		#ifdef DEBUG_PRINT
		printk("Diodes TSC: checksum=%x %x verified=%x\n",read_buf[VALID_TOUCH_MAX],read_buf[VALID_TOUCH_MAX+1], checksum);
		#endif
		if (checksum != ((1 << 8) * read_buf[VALID_TOUCH_MAX+1] + read_buf[VALID_TOUCH_MAX])) {
			printk("Diodes TSC: verify checksum fail!\n");
			return;
		}
	} 
	//else {
	   // printk("Diodes TSC: No Need to Check checksum!\n");
	//}
#endif
//-------------------------------------- Check Sum Comparing --------------------------------------

#ifdef DEBUG_PRINT
	for( i=0; i<REPORT_BUF_SIZE; i++ )
	{
		printk( "%2x ", read_buf[i] );
	}
	printk( "\n" );
#endif

	if(read_buf[TU_RMOD] == 0xb2)
	{
		switch (read_buf[TU_KEY_CODE]) 
		{
		/* SZSZ undefined - now defined, but not needed
			case TOUCH_KEY_HOME:
				input_event(tu->dev, EV_KEY, KEY_HOME, !!read_buf[TU_KEY_CODE]);
				prev_key = KEY_HOME;
				break;
			case TOUCH_KEY_BACK:
				input_event(tu->dev, EV_KEY, KEY_BACK, !!read_buf[TU_KEY_CODE]);
				prev_key = KEY_BACK;
				break;
			case TOUCH_KEY_MENU:
				input_event(tu->dev, EV_KEY, KEY_MENU, !!read_buf[TU_KEY_CODE]);
				prev_key = KEY_MENU;
				break;
			case TOUCH_KEY_REL:
				input_event(tu->dev, EV_KEY, prev_key, !!read_buf[TU_KEY_CODE]);
				break;
		*/
			default:
				//SZSZ error printk(tu->dev, "Unknown Key ID %02x", read_buf[TU_KEY_CODE]);
				break;
		}		
	}
	else if (read_buf[TU_RMOD] == 0xb1) 
	{
		prev_key = 0;
		touchcnt = read_buf[TU_POINTS];

		if( touchcnt==0 ) 
		{

			/// throttle
			struct timespec ts;
			ktime_get_ts(&ts);
			if(report_rate < 1)
				report_rate = 1;
			if(report_rate > 100)
				report_rate = 100;
			next_touch_ns = timespec_to_ns(&ts) + NSEC_PER_SEC / report_rate;
			/// throttle


			if(((gFlag >> 4) & 0x0F) == 0) {
			    //input_report_abs(tu->dev, ABS_MT_TOUCH_MAJOR, 0);
			    input_report_abs(tu->dev, ABS_MT_PRESSURE, 0);
			    input_report_key(tu->dev, BTN_TOUCH, 0);
			    input_report_abs(tu->dev, ABS_PRESSURE, 0);
			    gCount = 0;
#ifdef DEBUG_PRINT1
			    //printk("TCnt=0 P=0\n");
#endif
			} 
			if(((gFlag >> 4) & 0x0F) == 1) {
#ifdef DEBUG_PRINT1
			    //printk("Reset ABS\n\n");
#endif
			   input_report_key(tu->dev, BTN_TOUCH, 0);
			   input_report_abs(tu->dev, ABS_PRESSURE, 0);
			   gCount = 0;
			}

			if(((gFlag >> 4) & 0x0F) == 2) {
#ifdef DEBUG_PRINT1
			    //printk("Reset Slot\n\n");
#endif
				for( i=0; i<10; i++ )
				{
					input_mt_slot(tu->dev, i);
					input_mt_report_slot_state(tu->dev, MT_TOOL_FINGER, false );
				}

			   gCount = 0;
			}
			
		}
		else
		{
			idx_x_low = TU_1_POS_X_LOW;
			idx_x_hi  = TU_1_POS_X_HI;
			idx_y_low = TU_1_POS_Y_LOW;
			idx_y_hi  = TU_1_POS_Y_HI;
			idx_id_st = TU_1_ID_STATUS;
			for( i=0; i<touchcnt; i++ )
			{
				tu->x = COORD_INTERPRET(read_buf[idx_x_hi], read_buf[idx_x_low]);
//				tu->y = (TU_Y_AXIS - COORD_INTERPRET(read_buf[idx_y_hi],read_buf[idx_y_low]));
				tu->y = (COORD_INTERPRET(read_buf[idx_y_hi],read_buf[idx_y_low]));
				tu->w = (read_buf[idx_id_st]&0x0f);
				tu->id = (read_buf[idx_id_st]>>4)&0x0f;
				//Boundry Check
				if( (tu->x<0) || (tu->x>AA_X_SIZE) )
				{
					continue;
				}

				if( (tu->y<0) || (tu->y>AA_Y_SIZE) )
				{
					continue;
				}
				//RARA - revert x/y
				if (revert_x)
					tu->x = TU_X_AXIS - tu->x;
				if (revert_y)
					tu->y = TU_Y_AXIS - tu->y;
				
				if(((gFlag >> 4) & 0x0F) == 2) {
					tu_report_slot(tu, i);
				} else {
					tu_report(tu, i);
				}
				idx_x_low  += POINT_STRUCT_SIZE;
				idx_x_hi   += POINT_STRUCT_SIZE;
				idx_y_low  += POINT_STRUCT_SIZE;
				idx_y_hi   += POINT_STRUCT_SIZE;
				idx_id_st  += POINT_STRUCT_SIZE;
				//SZSZ touchcnt==0 seems never happen. Need to check tu->w (reported as touchMajor); if 0, pen up, else touch.
				//SZSZ simplify the work and handle one touch
				/*if (!tu->w) {
					input_report_abs(tu->dev, ABS_PRESSURE, 0);
#ifdef DEBUG_PRINT
				    printk("TCnt=%d P=0\n", touchcnt );
				} else {
				    printk("TCnt=%d\n", touchcnt );
#endif
				}*/
			}
		}
		//SZSZ report touch only for valid ID
		//input_sync(tu->dev);
	}
#ifdef DEBUG_PRINT
	else {
		printk("\n");
	}
#endif
	// Now that all mt/st events have been reported, issue a 'sync'
	 if(((gFlag >> 4) & 0x0F) == 2) {
	     
//#ifdef DEBUG_PRINT1
//	printk("Enter report pointer emulation!\n");
//#endif
	     //input_mt_report_pointer_emulation(tu->dev, false);
	 }
	 input_sync(tu->dev);
}


static irqreturn_t tu_irq(int irq, void *dev_id) {
	struct tu_data *tu = dev_id;
	
	// MUTEX LOCK HERE FOR IRQ?

	queue_work(tu_wq, &tu->work.work);

	return IRQ_HANDLED;
}

#ifdef LF_SPECIAL_SETTING
#if 0  //fw_ChipReset() perform same function, no need, NVD 20140529
static void reset_panel(void)
{
	nxp_soc_gpio_set_out_value(g_pdata->gpio_reset,  (g_pdata->reset_cfg)); // reset
	// msleep (160); //quadruple x 10
//msleep (16); //quadruple
	mdelay (16); //quadruple
	nxp_soc_gpio_set_out_value(g_pdata->gpio_reset, !(g_pdata->reset_cfg)); // unreset/ena
	mdelay (20);
	return;
}
#endif
#endif


static int __devinit tu_probe(struct i2c_client *client,
		const struct i2c_device_id *id)
{
	//unsigned char rdbuf[10];
	struct tu_data *tu;
	struct input_dev *input;
	int error = 0;
	int num_mt_slots = 10;
#ifdef REVISED_FLAG
	tu_blmode = BLMODE_NONE;	//Bootloader Mode
	tu_pfwbuf = 0;         //FW Buffer Pointer
	tu_fwsize = 0;         //FW Size
#endif
	//int err = 0;
	g_pdata = (struct tu_platform_data *)(client->dev.platform_data);
	g_client = client;

//SANGSUNG 210 Pin Setting
#ifdef _SMART_201_EVB_
	s3c_gpio_cfgpin(ATTB, S3C_GPIO_INPUT);
	s3c_gpio_setpull(ATTB, S3C_GPIO_PULL_UP);
	RESETPIN_SET1;
#else
// handle the situation while _SMART_201_EVB_ is not defined
	//Reset Implement : Set to high
	// nxp_soc_gpio_set_out_value(g_pdata->gpio_reset, !(g_pdata->reset_cfg)); // unreset/ena
#endif
	tu = kzalloc(sizeof(*tu), GFP_KERNEL);
	if (!tu)
		return -ENOMEM;

	input = input_allocate_device();
	if (!tu || !input) {
		dev_err(&client->dev, "Failed to allocate input device!\n");
		error = -ENOMEM;
		goto err_free_mem;
	}

	tu->client = client;
	tu->dev = input;

///////////////////////////////////////////////////////////////////////////////////
	// get version 
	getVersion(g_Version);
	fw_ChipReset(client);
	mdelay(100);
    printk("Init Diodes TSC Firmware Version %d.%d.%d.%d \n", g_Version[4], g_Version[5], g_Version[6], g_Version[7]);
    snprintf(fw_version, 16, "%d.%d.%d.%d", g_Version[4], g_Version[5], g_Version[6], g_Version[7]);
	gFlag = g_Version[4];

//----------------20140319 _SMART_201_EVB_----------------------------------
#ifdef _SMART_201_EVB_
	client->irq = gpio_to_irq(S5PV210_GPH1(6)) ;  
	tu->irq = client->irq;
#else
// handle the situation while _SMART_201_EVB_ is not defined
#endif
//----------------------------------------------------
	INIT_WORK(&tu->work.work, tu_i2c_work);

	//SZSZ need this name
	input->name = "touchscreen interface";

	input->id.bustype = BUS_I2C;
	input->dev.parent = &client->dev;
	
	if ( ((gFlag >> 4) & 0x0F) == 0 ) { // hybrid mode
		input->evbit[0] = BIT_MASK(EV_SYN) | BIT_MASK(EV_KEY) |
				BIT_MASK(EV_ABS);
		input->keybit[BIT_WORD(BTN_TOUCH)] = BIT_MASK(BTN_TOUCH);

		set_bit(KEY_BACK, input->keybit);
		set_bit(KEY_MENU, input->keybit);
		set_bit(KEY_HOME, input->keybit);
		set_bit(KEY_VOLUMEUP, input->keybit);
		set_bit(KEY_VOLUMEDOWN, input->keybit);
		set_bit(KEY_SEND, input->keybit);

		input_set_abs_params(input, ABS_MT_TOUCH_MAJOR, 0, 8, 0, 0);
		input_set_abs_params(input, ABS_MT_WIDTH_MAJOR, 0, 8, 0, 0);
		input_set_abs_params(input, ABS_MT_TRACKING_ID, 0, MAX_TRACKING_ID, 0, 0);
		input_set_abs_params(input, ABS_PRESSURE, 0, 100, 0, 0);
		//*X, Y Resolution
		input_set_abs_params(input, ABS_MT_POSITION_X, 0, TU_X_AXIS, 0, 0);
		input_set_abs_params(input, ABS_MT_POSITION_Y, 0, TU_Y_AXIS, 0, 0);
		input_set_abs_params(input, ABS_X, 0, TU_X_AXIS, 0, 0);
		input_set_abs_params(input, ABS_Y, 0, TU_Y_AXIS, 0, 0);
		
	} else if ( ((gFlag >> 4) & 0x0F) == 1 ) { // single
		 set_bit(EV_ABS, input->evbit);
		 set_bit(EV_KEY, input->evbit);
		 //set_bit(EV_SYN, input->evbit);
		 set_bit(BTN_TOUCH, input->keybit);
		 //int i; 
		 //set_bit(INPUT_PROP_POINTER, input->propbit);
		 //set_bit(INPUT_PROP_BUTTONPAD, input->propbit);
		 //set_bit(INPUT_PROP_DIRECT, input->propbit);

	 
		/* For single touch */
		 input_set_abs_params(input, ABS_X, 0, TU_X_AXIS, 0, 0);
		 input_set_abs_params(input, ABS_Y, 0, TU_Y_AXIS, 0, 0);
		 input_set_abs_params(input, ABS_PRESSURE, 0, 100, 0, 0);	
	} else { //slot mode
		 set_bit(EV_ABS, input->evbit);
		 set_bit(EV_KEY, input->evbit);
		 //set_bit(EV_SYN, input->evbit);
		 set_bit(BTN_TOUCH, input->keybit);
		 set_bit(INPUT_PROP_POINTER, input->propbit);
		 //set_bit(INPUT_PROP_BUTTONPAD, input->propbit);
		 //set_bit(INPUT_PROP_DIRECT, input->propbit);

	 
		/* For single touch */
		 input_set_abs_params(input, ABS_X, 0, TU_X_AXIS, 0, 0);
		 input_set_abs_params(input, ABS_Y, 0, TU_Y_AXIS, 0, 0);
		 input_set_abs_params(input, ABS_PRESSURE, 0, 100, 0, 0);

		 /* For multi touch */
		 
		 //input_mt_init_slots(input, num_mt_slots, 0);
		 input_mt_init_slots(input, num_mt_slots);
		 input_set_abs_params(input, ABS_MT_TOUCH_MAJOR, 0, 8, 0, 0);
		 //input_set_abs_params(input, ABS_MT_WIDTH_MAJOR, 0, 8, 0, 0);
		 //input_set_abs_params(input, ABS_MT_TRACKING_ID, 0, MAX_TRACKING_ID, 0, 0);
		 input_set_abs_params(input, ABS_MT_POSITION_X, 0, TU_X_AXIS, 0, 0);
		 input_set_abs_params(input, ABS_MT_POSITION_Y, 0, TU_Y_AXIS, 0, 0);
		 input_set_abs_params(input, ABS_MT_PRESSURE, 0, 100, 0, 0);
	}
	
	input_set_drvdata(input, tu);

	mdelay(500);

//--------------------20140319 _SMART_201_EVB_------------------------
#ifdef _SMART_201_EVB_
	error = request_irq(client->irq, tu_irq,
			IRQF_TRIGGER_FALLING, client->name, tu);
	if (error) {
		dev_err(&client->dev, "Unable to request touchscreen IRQ.\n");
		goto err_free_mem;
	}
	disable_irq_nosync(client->irq);
#else
// handle the situation while _SMART_201_EVB_ is not defined
	/* request IRQ resouce */
	if (client->irq < 0) {
		dev_err(&tu->client->dev,
			"No irq allocated in client resources!\n");
		goto err_free_mem;
	}

	tu->irq = client->irq;
	error = request_irq(tu->irq, tu_irq,
			IRQF_TRIGGER_FALLING, TU_DRIVER_NAME, tu);
	if (error)
		goto err_free_mem;
#endif
	error = input_register_device(input);
	if (error) {
	goto err_free_irq;
//----------------------------------------------------------------------
	}
	
		
	

#ifdef DIODES_SYSFS_ENTRY
	printk("DIODES TSC : Sysfs create_group====\n");
	error = sysfs_create_group(&client->dev.kobj, &dev_attr_grp);
#endif

	i2c_set_clientdata(client, tu);
	device_init_wakeup(&client->dev, 1);

#ifdef LF_SPECIAL_SETTING
    //SZSZ
  //  reset_panel();  // fw_ChipReset() perform same funton before,   disable it 20140529, NVD
#endif


#ifdef CONFIG_PM
	tu->early_suspend.level = EARLY_SUSPEND_LEVEL_BLANK_SCREEN + 1;
	tu->early_suspend.suspend = tu_early_suspend;
	tu->early_suspend.resume = tu_late_resume;
	register_early_suspend(&tu->early_suspend);

#endif

#ifdef REVISED_FLAG
	enable_irq(client->irq);
#endif

#ifdef  DIODES_AUTO_UPDATE
	printk("==========Check CTP FW Version===========\n");
//	mdelay(100);
//	fw_ChipReset(client);
//	mdelay(100);
	autoUpdate(client);
/*#else
	getVersion(rdbuf);
	printk("Diodes TSC Firmwar Version_%d.%d.%d.%d \n", rdbuf[4], rdbuf[5], rdbuf[6], rdbuf[7]);
	fw_ChipReset(client);
	mdelay(100);*/
#endif
	return 0;

	err_free_irq:
	free_irq(client->irq, tu);
	err_free_mem:
	input_free_device(input);
	kfree(tu);
	return error;
}


static int __devexit tu_remove(struct i2c_client *client)
{
//	struct i2c_dev *i2c_dev;
	struct tu_data *tu = i2c_get_clientdata(client);

#ifdef CONFIG_PM
	unregister_early_suspend(&tu->early_suspend);
#endif

#ifdef DIODES_SYSFS_ENTRY
	sysfs_remove_group(&client->dev.kobj, &dev_attr_grp);
#endif

	device_init_wakeup(&client->dev, 0);

	free_irq(client->irq, tu);
	input_unregister_device(tu->dev);
	kfree(tu);

	return 0;
}


#ifdef CONFIG_PM

static int tu_i2c_ts_suspend(struct i2c_client *client) 
{
    int ret;
    struct tu_data *tu = i2c_get_clientdata(client);
    printk("suspend!\n");
	
    ret = cancel_work_sync(&tu->work);
    ret = i2c_smbus_write_i2c_block_data(client, 0, NORM_CMD_LENG, command_list[0]);

    if (ret < 0)
	printk(KERN_ERR "i2c_smbus_write_i2c_block_data failed\n");
	
    return 0;
}

static int tu_i2c_ts_resume(struct i2c_client *client) {
   int ret;
   printk("resume\n");
   ret = i2c_smbus_write_i2c_block_data(client, 0, NORM_CMD_LENG, command_list[1]);

	if (ret < 0)
		printk(KERN_ERR "i2c_smbus_write_i2c_block_data failed\n");

	return 0;
}

static void tu_early_suspend(struct early_suspend *h)
{
	struct tu_data *tu;
	tu = container_of(h, struct tu_data, early_suspend);
	tu_i2c_ts_suspend(tu->client);
}

static void tu_late_resume(struct early_suspend *h)
{
	struct tu_data *tu;
	tu = container_of(h, struct tu_data, early_suspend);
	tu_i2c_ts_resume(tu->client);
}

#endif

static const struct i2c_device_id tu_i2c_ts_id[] =
        { { TU_DRIVER_NAME, 0 }, { } };
MODULE_DEVICE_TABLE( i2c, tu_i2c_ts_id);

static struct i2c_driver tu_i2c_ts_driver = { .driver = { .owner =
        THIS_MODULE, .name = TU_DRIVER_NAME, },
//-----------------20140319 CONFIG_PM---------------------
#ifdef CONFIG_PM
//-----------------20140319 CONFIG_PM---------------------
        .suspend = tu_i2c_ts_suspend, .resume = tu_i2c_ts_resume,
#endif
        .probe = tu_probe, .remove = __devexit_p(
                tu_remove), .id_table = tu_i2c_ts_id, };

static int __init tu_i2c_ts_init(void)
{

#ifdef SET_DPC_VCOM
    spi_lcd_setup();
#endif

	tu_wq = create_singlethread_workqueue("tu_wq");
	if (!tu_wq)
		return -ENOMEM;

	return i2c_add_driver(&tu_i2c_ts_driver);
}
module_init( tu_i2c_ts_init);

static void __exit tu_i2c_ts_exit(void)
{
	i2c_del_driver(&tu_i2c_ts_driver);
	if(tu_wq)
		destroy_workqueue(tu_wq);
}
module_exit( tu_i2c_ts_exit);
MODULE_LICENSE("GPL");

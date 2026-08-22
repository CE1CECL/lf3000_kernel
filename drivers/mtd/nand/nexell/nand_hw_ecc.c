//------------------------------------------------------------------------------
//
//  Copyright (C) 2009 Nexell Co., All Rights Reserved
//  Nexell Co. Proprietary & Confidential
//
//	MAGICEYES INFORMS THAT THIS CODE AND INFORMATION IS PROVIDED "AS IS" BASE
//  AND WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING
//  BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
//  FOR A PARTICULAR PURPOSE.
//
//	Module     :
//	File       :
//	Description:
//	Author     : Goofy
//	History    :
//------------------------------------------------------------------------------
#if (0)
#include <common.h>
#include <asm/errno.h>
#include <nand.h>
#include <platform.h>
#else
#include <linux/kernel.h>
#include <mach/platform.h>
#endif

#include <linux/slab.h>
#include <linux/mtd/nand.h>
#include "lf2000.h"
#include "nand_ecc.h"
extern struct lf2000_nand_devices lf2000_nand;



#if	(1)
#define DBGOUT(msg...)		{ printk(KERN_INFO "ecc_func: " msg); }
#else
#define DBGOUT(msg...)		do {} while (0)
#endif

#define ERROUT(msg...)		{ 					\
		printk(KERN_ERR "ERROR: %s, %s line %d: \n",		\
			__FILE__, __FUNCTION__, __LINE__),	\
		printk(KERN_ERR msg); }


//------------------------------------------------------------------------------
// NAND CTRL REGISGER:
//------------------------------------------------------------------------------
#define PHY_BASEADDR_NAND_MODULE (0xC0051088)
#define BASEADDR_NFREG		IO_ADDRESS(PHY_BASEADDR_NAND_MODULE)
#define BASEADDR_NFCTRL		(BASEADDR_NFREG)	// 0xC0051088

#define BASEADDR_NFCNT		(BASEADDR_NFREG + 0x08)	// 0xC0051090
#define BASEADDR_NFECCSTATUS	(BASEADDR_NFREG + 0x0C)	// 0xC0051094
#define BASEADDR_TIMING		(BASEADDR_NFREG + 0x04)	// 0xC005108C
#define BASEADDR_NFECC		(BASEADDR_NFREG + 0x28)	// 0xC0051000
#define BASEADDR_NFORGECC	(BASEADDR_NFREG + 0x94)	// 0xC005111C
#define BASEADDR_NFSYNDROME	(BASEADDR_NFREG + 0x100)// 0xC0051188
#define BASEADDR_NFELP		(BASEADDR_NFREG + 0x178)// 0xC0051274
#define BASEADDR_NFERRLOC	(BASEADDR_NFREG + 0x1F0)// 0xC0051278
#define BASEADDR_NFECCAUTMODE	(BASEADDR_NFREG + 0x268)// 0xC00512F0
#define BASEADDR_NFWSYNDROME	(BASEADDR_NFREG + 0x26C)// 0xC00%12F4

#define T_ACS	0x0C
#define T_COS	0x10
#define T_ACC0	0x14
#define T_OCH	0x1C
#define T_CAH	0x20

#define REG_NFCTRL		(*(volatile unsigned int *)(BASEADDR_NFREG))
#define REG_NFECCSTATUS		(*(volatile unsigned int *)(BASEADDR_NFECCSTATUS))

//------------------------------------------------------------------------------
// Register Bits
#define NX_NFCTRL_NCSENB		(1U<<31)
#define NX_NFCTRL_AUTORESET		(1U<<30)
#define NX_NFCTRL_ECCMODE		(7U<<27)
#define NX_NFCTRL_ECCMODE_16			(3U<<27)
#define NX_NFCTRL_ECCMODE_24			(4U<<27)
#define NX_NFCTRL_IRQPEND		(1U<<15)
#define NX_NFCTRL_ECCRST		(1U<<11)
#define NX_NFCTRL_RNB			(1U<< 9)
#define NX_NFCTRL_IRQENB		(1U<< 8)
#define NX_NFCTRL_BANK			(3U<< 0)

//------------------------------------------------------------------------------


void NX_NAND_CreateLookupTable(struct nand_chip *chip)
{
	const struct tag_bch_info * bch_info;
	struct tag_bch_arrays     * bch_arrays;
	int	i;
	int	mask;	// Register states
	unsigned int p;	// Primitive polynomial
	short * pAlphaTo;
	short * pIndexOf;
	int   * buf;
	int	allocBytes;

	bch_info   = ((struct lf2000_nand_data *)chip->priv)->bch_info;
	bch_arrays = bch_info->p_arrays;
	if (bch_arrays->bch_AlphaToTable != NULL) {
		return;				
	}
	if (bch_info->bch_var_t == 24)
		p = 0x41D5;
	else
		p = 0x25AF;

	allocBytes = 2 * sizeof(short) * (1 + bch_arrays->bch_var_n);

	buf = kzalloc(allocBytes, GFP_KERNEL);

	if(NULL == buf) {
		printk(KERN_INFO "NX_NAND_CreateLookupTable(): allocation failure\n");
		return;
	}
	bch_arrays->L	= lf2000_nand.L;
	bch_arrays->u_L	= lf2000_nand.u_L;
	bch_arrays->reg	= lf2000_nand.reg;
	bch_arrays->s	= lf2000_nand.s;
	bch_arrays->elp	= lf2000_nand.elp;
	bch_arrays->desc= lf2000_nand.desc;

	bch_arrays->bch_AlphaToTable = (short *)(buf);
	bch_arrays->bch_IndexOfTable = bch_arrays->bch_AlphaToTable
					+ (1 + bch_arrays->bch_var_n);

	pAlphaTo = bch_arrays->bch_AlphaToTable;
	pIndexOf = bch_arrays->bch_IndexOfTable;

	// Galois field implementation with shift registers
	// Ref: L&C, Chapter 6.7, pp. 217
	mask = 1;
	pAlphaTo[bch_arrays->bch_var_m] = 0;
	for ( i=0 ; i<bch_arrays->bch_var_m ; i++ )	{
		pAlphaTo[ i ] = mask;
		pIndexOf[ pAlphaTo[i] ] = i;

		if ( p & (1U<<i) )
			pAlphaTo[bch_arrays->bch_var_m] ^= mask;

		mask <<= 1 ;
	}

	pIndexOf[ pAlphaTo[bch_arrays->bch_var_m] ] = bch_arrays->bch_var_m;
	mask >>= 1;
	for ( i=bch_arrays->bch_var_m+1 ; i<bch_arrays->bch_var_n ; i++ ) {
		if ( pAlphaTo[i-1] >= mask )
			pAlphaTo[i] = pAlphaTo[bch_arrays->bch_var_m] 
					^ ((pAlphaTo[i-1] ^ mask) << 1);
		else
			pAlphaTo[i] = pAlphaTo[i-1] << 1;

		pIndexOf[pAlphaTo[i]] = i;
	}
	pAlphaTo[i] = 0;
	pIndexOf[0] = -1;
}



#define BASEADDR_NFECCCTRL		(BASEADDR_NFREG + 0x04)		// 0xC002B104
#define BASEADDR_NFECC7			(BASEADDR_NFECC + 0x1C)
#define BASEADDR_NFORGECC7		(BASEADDR_NFORGECC + 0x1C)
#define BASEADDR_NFSYNDROME8		(BASEADDR_NFSYNDROME + 0x20)
#define BASEADDR_NFELP0			(BASEADDR_NFELP + 0x00)		// 0xC002B138
#define BASEADDR_NFELOC0		(BASEADDR_NFERRLOC + 0x00)	// 0xC002B168

#define REG_NFECCCTRL			(*(volatile unsigned int *)(BASEADDR_NFECCCTRL))

#define NFECCCTRL_Encode		(NX_NF_ENCODE << NX_NFECCCTRL_DECMODE)
#define NFECCCTRL_Decode		(NX_NF_DECODE << NX_NFECCCTRL_DECMODE)
#define NFECCCTRL_Start			(1 << NX_NFECCCTRL_RUNECC)	// 0x00200000

#define NFECCCTRL_ParityCount4	(6 << 10)
#define NFECCCTRL_ParityCount8	(12 << 10)
#define NFECCCTRL_ParityCount12	(19 << 10)
#define NFECCCTRL_ParityCount16	(25 << 10)
#define NFECCCTRL_ParityCount24	(41 << 10)




unsigned int NX_NAND_Get_NFCONTROL(void) {
	return REG_NFCTRL;
}

#define NFCONTROL_RO_BITS_MASK	0x07FF76C0
void  NX_NAND_Set_NFCONTROL(unsigned int value) {
	unsigned int reg_value;

	value     &= ~NFCONTROL_RO_BITS_MASK;	// mask out the read-only bits
	reg_value  = REG_NFCTRL;
	reg_value &= NFCONTROL_RO_BITS_MASK;

	REG_NFCTRL = reg_value | value;
}

void NX_NAND_Get_Timing(unsigned int * pACS,
			unsigned int * pCOS,
			unsigned int * pOCH,
			unsigned int * pCAH,
			unsigned int * pACC0) 
{
	if (pACS)  *pACS  = (*(volatile unsigned int *)(BASEADDR_TIMING + T_ACS));
	if (pCOS)  *pCOS  = (*(volatile unsigned int *)(BASEADDR_TIMING + T_COS));
	if (pOCH)  *pOCH  = (*(volatile unsigned int *)(BASEADDR_TIMING + T_OCH));
	if (pCAH)  *pCAH  = (*(volatile unsigned int *)(BASEADDR_TIMING + T_CAH));
	if (pACC0) *pACC0 = (*(volatile unsigned int *)(BASEADDR_TIMING + T_ACC0));
}

int NX_NAND_Set_Timing(unsigned int index, unsigned int value)
{
	volatile unsigned int * p;

	switch (index) {
	case kACS:	p = (volatile unsigned int *)(BASEADDR_TIMING + T_ACS);	break;
	case kCOS:	p = (volatile unsigned int *)(BASEADDR_TIMING + T_COS);	break;
	case kOCH:	p = (volatile unsigned int *)(BASEADDR_TIMING + T_OCH);	break;
	case kCAH:	p = (volatile unsigned int *)(BASEADDR_TIMING + T_CAH);	break;
	case kACC0:	p = (volatile unsigned int *)(BASEADDR_TIMING + T_ACC0);break;
	default:
		return -1;
	}
	*p = value;
	return 0;
}

int NX_NAND_Get_ECC_regs(unsigned int * pbuf)
{
	int i;
	volatile unsigned int * pregs;

	if (NULL == pbuf)
		return -1;
	
	for (i = 0, pregs = (volatile unsigned int *)BASEADDR_NFECC;
		 i < 7; ++i) {
		*pbuf++ = *pregs++;
	}
	for ( pregs = (volatile unsigned int *)BASEADDR_NFECC7;
		 i < 11; ++i) {
		*pbuf++ = *pregs++;
	}
	return 0;
}

int NX_NAND_Get_OrigECC_regs(unsigned int * pbuf)
{
	int i;
	volatile unsigned int * pregs;

	if (NULL == pbuf)
		return -1;
	
	for (i = 0, pregs = (volatile unsigned int *)BASEADDR_NFORGECC;
		 i < 7; ++i) {
		*pbuf++ = *pregs++;
	}
	for ( pregs = (volatile unsigned int *)BASEADDR_NFORGECC7;
		 i < 11; ++i) {
		*pbuf++ = *pregs++;
	}
	return 0;
}

unsigned int NX_NAND_Get_NFCNT(void)
{
	return (*(volatile unsigned int *)(BASEADDR_NFREG+0x3c));
}

unsigned int NX_NAND_Get_NFECCSTATUS(void)
{
	return (*(volatile unsigned int *)(BASEADDR_NFREG+0x40));
}

int NX_NAND_Get_SYNDROMES(unsigned int * pbuf)
{
	int i;
	volatile unsigned int * pregs;

	if (NULL == pbuf)
		return -1;
	
	for (i = 0, pregs = (volatile unsigned int *)BASEADDR_NFSYNDROME;
		 i < 8; ++i) {
		*pbuf++ = *pregs++;
	}
	for ( pregs = (volatile unsigned int *)BASEADDR_NFSYNDROME8;
		 i < 12; ++i) {
		*pbuf++ = *pregs++;
	}
	return 0;
}

unsigned int NX_NAND_Get_NFECCCTRL(void) {
	return REG_NFECCCTRL;
}

#define NFECCCTRL_RO_BITS_MASK	0xFE000000
void  NX_NAND_Set_NFECCCTRL(unsigned int value) {
	unsigned int reg_value;

	value     &= ~NFECCCTRL_RO_BITS_MASK;	// mask out the read-only bits
	reg_value  = REG_NFECCCTRL;
	reg_value &= NFECCCTRL_RO_BITS_MASK;

	REG_NFECCCTRL = reg_value | value;
}

int NX_NAND_Get_ELP_regs(unsigned int * pbuf) {
	int i;
	volatile unsigned int * pregs;

	if (NULL == pbuf)
		return -1;
	
	for (i = 0, pregs = (volatile unsigned int *)BASEADDR_NFELP0;
		 i < 12; ++i) {
		*pbuf++ = *pregs++;
	}
	return 0;
}

int NX_NAND_Set_ELP_reg(unsigned int index, unsigned int value) {
	if (index >= 12)
		return -1;
	*((volatile unsigned int *)BASEADDR_NFELP0 + index) = value;
	return 0;
}

int NX_NAND_Get_ELOC_regs(unsigned int * pbuf) {
	int i;
	volatile unsigned int * pregs;

	if (NULL == pbuf)
		return -1;
	
	for (i = 0, pregs = (volatile unsigned int *)BASEADDR_NFELOC0;
		 i < 12; ++i) {
		*pbuf++ = *pregs++;
	}
	return 0;
}

#if 1	/* Shorter, and all we usually want */

void NX_NAND_OutputNandControllerRegs(void)
{
	printk(KERN_INFO "NFCONTROL %08x; "
			 "ECCSTATUS %08x; "
			 "ECCCTRL   %08x\n",
			NX_NAND_Get_NFCONTROL(),
			NX_NAND_Get_NFECCSTATUS(),
			NX_NAND_Get_NFECCCTRL());
}

#else
void NX_NAND_OutputNandControllerRegs(void)
{
	printk(KERN_INFO "NFCONTROL 0x%08x\n", NX_NAND_Get_NFCONTROL());
	printk(KERN_INFO "ORIGECC   %08x %08x %08x %08x %08x %08x %08x\n",
			(*(volatile unsigned int *)(BASEADDR_NFREG+0x20)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0x24)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0x28)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0x2c)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0x30)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0x34)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0x38)));
	printk(KERN_INFO "NFCNT     %08x\n", NX_NAND_Get_NFCNT());
	printk(KERN_INFO "ECCSTATUS %08x\n", NX_NAND_Get_NFECCSTATUS());
	printk(KERN_INFO "SYNDROMEs %08x %08x %08x %08x %08x %08x %08x %08x\n",
			(*(volatile unsigned int *)(BASEADDR_NFREG+0x44)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0x48)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0x4c)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0x50)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0x54)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0x58)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0x5c)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0x60)));
	printk(KERN_INFO "TIMEACS  %08x\n",
			(*(volatile unsigned int *)(BASEADDR_TIMING + T_ACS)));
	printk(KERN_INFO "TIMECOS  %08x\n",
			(*(volatile unsigned int *)(BASEADDR_TIMING + T_COS)));
	printk(KERN_INFO "TIMEACC0 %08x\n",
			(*(volatile unsigned int *)(BASEADDR_TIMING + T_ACC0)));
	printk(KERN_INFO "TIME0CH  %08x\n",
			(*(volatile unsigned int *)(BASEADDR_TIMING + T_OCH)));
	printk(KERN_INFO "TIMECAH  %08x\n",
			(*(volatile unsigned int *)(BASEADDR_TIMING + T_CAH)));
	printk(KERN_INFO "ECCCTRL  %08x\n", NX_NAND_Get_NFECCCTRL());
	printk(KERN_INFO "ORIGECC2 %08x %08x %08x %08x\n",
			(*(volatile unsigned int *)(BASEADDR_NFREG+0x9c)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0xa0)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0xa4)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0xa8)));
	printk(KERN_INFO "Syndrom2 %08x %08x %08x %08x\n",
			(*(volatile unsigned int *)(BASEADDR_NFREG+0xac)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0xb0)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0xb4)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0xb8)));
	printk(KERN_INFO "ELP0-3   %08x %08x %08x %08x\n",
			(*(volatile unsigned int *)(BASEADDR_NFREG+0xbc)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0xc0)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0xc4)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0xc8)));
	printk(KERN_INFO "ELP4-7   %08x %08x %08x %08x\n",
			(*(volatile unsigned int *)(BASEADDR_NFREG+0xcc)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0xd0)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0xd4)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0xd8)));
	printk(KERN_INFO "ELP8-11  %08x %08x %08x %08x\n",
			(*(volatile unsigned int *)(BASEADDR_NFREG+0xdc)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0xe0)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0xe4)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0xe8)));
	printk(KERN_INFO "ELOC0-3  %08x %08x %08x %08x\n",
			(*(volatile unsigned int *)(BASEADDR_NFREG+0xec)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0xf0)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0xf4)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0xf8)));
	printk(KERN_INFO "ELOC4-7  %08x %08x %08x %08x\n",
			(*(volatile unsigned int *)(BASEADDR_NFREG+0xfc)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0x100)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0x104)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0x108)));
	printk(KERN_INFO "ELOC8-11 %08x %08x %08x %08x\n",
			(*(volatile unsigned int *)(BASEADDR_NFREG+0x10c)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0x110)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0x114)),
			(*(volatile unsigned int *)(BASEADDR_NFREG+0x118)));
}
#endif	/* 12apr12 */


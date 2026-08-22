################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/mtd/afs.c \
../drivers/mtd/ar7part.c \
../drivers/mtd/bcm63xxpart.c \
../drivers/mtd/cmdlinepart.c \
../drivers/mtd/ftl.c \
../drivers/mtd/inftlcore.c \
../drivers/mtd/inftlmount.c \
../drivers/mtd/mtd_blkdevs.c \
../drivers/mtd/mtdblock.c \
../drivers/mtd/mtdblock_ro.c \
../drivers/mtd/mtdchar.c \
../drivers/mtd/mtdconcat.c \
../drivers/mtd/mtdcore.c \
../drivers/mtd/mtdoops.c \
../drivers/mtd/mtdpart.c \
../drivers/mtd/mtdsuper.c \
../drivers/mtd/mtdswap.c \
../drivers/mtd/nftlcore.c \
../drivers/mtd/nftlmount.c \
../drivers/mtd/ofpart.c \
../drivers/mtd/redboot.c \
../drivers/mtd/rfd_ftl.c \
../drivers/mtd/sm_ftl.c \
../drivers/mtd/ssfdc.c 

OBJS += \
./drivers/mtd/afs.o \
./drivers/mtd/ar7part.o \
./drivers/mtd/bcm63xxpart.o \
./drivers/mtd/cmdlinepart.o \
./drivers/mtd/ftl.o \
./drivers/mtd/inftlcore.o \
./drivers/mtd/inftlmount.o \
./drivers/mtd/mtd_blkdevs.o \
./drivers/mtd/mtdblock.o \
./drivers/mtd/mtdblock_ro.o \
./drivers/mtd/mtdchar.o \
./drivers/mtd/mtdconcat.o \
./drivers/mtd/mtdcore.o \
./drivers/mtd/mtdoops.o \
./drivers/mtd/mtdpart.o \
./drivers/mtd/mtdsuper.o \
./drivers/mtd/mtdswap.o \
./drivers/mtd/nftlcore.o \
./drivers/mtd/nftlmount.o \
./drivers/mtd/ofpart.o \
./drivers/mtd/redboot.o \
./drivers/mtd/rfd_ftl.o \
./drivers/mtd/sm_ftl.o \
./drivers/mtd/ssfdc.o 

C_DEPS += \
./drivers/mtd/afs.d \
./drivers/mtd/ar7part.d \
./drivers/mtd/bcm63xxpart.d \
./drivers/mtd/cmdlinepart.d \
./drivers/mtd/ftl.d \
./drivers/mtd/inftlcore.d \
./drivers/mtd/inftlmount.d \
./drivers/mtd/mtd_blkdevs.d \
./drivers/mtd/mtdblock.d \
./drivers/mtd/mtdblock_ro.d \
./drivers/mtd/mtdchar.d \
./drivers/mtd/mtdconcat.d \
./drivers/mtd/mtdcore.d \
./drivers/mtd/mtdoops.d \
./drivers/mtd/mtdpart.d \
./drivers/mtd/mtdsuper.d \
./drivers/mtd/mtdswap.d \
./drivers/mtd/nftlcore.d \
./drivers/mtd/nftlmount.d \
./drivers/mtd/ofpart.d \
./drivers/mtd/redboot.d \
./drivers/mtd/rfd_ftl.d \
./drivers/mtd/sm_ftl.d \
./drivers/mtd/ssfdc.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/mtd/%.o: ../drivers/mtd/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



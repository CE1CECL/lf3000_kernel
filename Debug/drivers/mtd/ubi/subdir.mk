################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/mtd/ubi/build.c \
../drivers/mtd/ubi/cdev.c \
../drivers/mtd/ubi/debug.c \
../drivers/mtd/ubi/eba.c \
../drivers/mtd/ubi/gluebi.c \
../drivers/mtd/ubi/io.c \
../drivers/mtd/ubi/kapi.c \
../drivers/mtd/ubi/misc.c \
../drivers/mtd/ubi/scan.c \
../drivers/mtd/ubi/upd.c \
../drivers/mtd/ubi/vmt.c \
../drivers/mtd/ubi/vtbl.c \
../drivers/mtd/ubi/wl.c 

OBJS += \
./drivers/mtd/ubi/build.o \
./drivers/mtd/ubi/cdev.o \
./drivers/mtd/ubi/debug.o \
./drivers/mtd/ubi/eba.o \
./drivers/mtd/ubi/gluebi.o \
./drivers/mtd/ubi/io.o \
./drivers/mtd/ubi/kapi.o \
./drivers/mtd/ubi/misc.o \
./drivers/mtd/ubi/scan.o \
./drivers/mtd/ubi/upd.o \
./drivers/mtd/ubi/vmt.o \
./drivers/mtd/ubi/vtbl.o \
./drivers/mtd/ubi/wl.o 

C_DEPS += \
./drivers/mtd/ubi/build.d \
./drivers/mtd/ubi/cdev.d \
./drivers/mtd/ubi/debug.d \
./drivers/mtd/ubi/eba.d \
./drivers/mtd/ubi/gluebi.d \
./drivers/mtd/ubi/io.d \
./drivers/mtd/ubi/kapi.d \
./drivers/mtd/ubi/misc.d \
./drivers/mtd/ubi/scan.d \
./drivers/mtd/ubi/upd.d \
./drivers/mtd/ubi/vmt.d \
./drivers/mtd/ubi/vtbl.d \
./drivers/mtd/ubi/wl.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/mtd/ubi/%.o: ../drivers/mtd/ubi/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



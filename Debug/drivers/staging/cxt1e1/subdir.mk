################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/cxt1e1/comet.c \
../drivers/staging/cxt1e1/comet_tables.c \
../drivers/staging/cxt1e1/functions.c \
../drivers/staging/cxt1e1/hwprobe.c \
../drivers/staging/cxt1e1/linux.c \
../drivers/staging/cxt1e1/musycc.c \
../drivers/staging/cxt1e1/ossiRelease.c \
../drivers/staging/cxt1e1/pmc93x6_eeprom.c \
../drivers/staging/cxt1e1/pmcc4_drv.c \
../drivers/staging/cxt1e1/sbecrc.c \
../drivers/staging/cxt1e1/sbeid.c \
../drivers/staging/cxt1e1/sbeproc.c 

OBJS += \
./drivers/staging/cxt1e1/comet.o \
./drivers/staging/cxt1e1/comet_tables.o \
./drivers/staging/cxt1e1/functions.o \
./drivers/staging/cxt1e1/hwprobe.o \
./drivers/staging/cxt1e1/linux.o \
./drivers/staging/cxt1e1/musycc.o \
./drivers/staging/cxt1e1/ossiRelease.o \
./drivers/staging/cxt1e1/pmc93x6_eeprom.o \
./drivers/staging/cxt1e1/pmcc4_drv.o \
./drivers/staging/cxt1e1/sbecrc.o \
./drivers/staging/cxt1e1/sbeid.o \
./drivers/staging/cxt1e1/sbeproc.o 

C_DEPS += \
./drivers/staging/cxt1e1/comet.d \
./drivers/staging/cxt1e1/comet_tables.d \
./drivers/staging/cxt1e1/functions.d \
./drivers/staging/cxt1e1/hwprobe.d \
./drivers/staging/cxt1e1/linux.d \
./drivers/staging/cxt1e1/musycc.d \
./drivers/staging/cxt1e1/ossiRelease.d \
./drivers/staging/cxt1e1/pmc93x6_eeprom.d \
./drivers/staging/cxt1e1/pmcc4_drv.d \
./drivers/staging/cxt1e1/sbecrc.d \
./drivers/staging/cxt1e1/sbeid.d \
./drivers/staging/cxt1e1/sbeproc.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/cxt1e1/%.o: ../drivers/staging/cxt1e1/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



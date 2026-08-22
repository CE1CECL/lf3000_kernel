################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/tidspbridge/rmgr/dbdcd.c \
../drivers/staging/tidspbridge/rmgr/disp.c \
../drivers/staging/tidspbridge/rmgr/drv.c \
../drivers/staging/tidspbridge/rmgr/drv_interface.c \
../drivers/staging/tidspbridge/rmgr/dspdrv.c \
../drivers/staging/tidspbridge/rmgr/mgr.c \
../drivers/staging/tidspbridge/rmgr/nldr.c \
../drivers/staging/tidspbridge/rmgr/node.c \
../drivers/staging/tidspbridge/rmgr/proc.c \
../drivers/staging/tidspbridge/rmgr/pwr.c \
../drivers/staging/tidspbridge/rmgr/rmm.c \
../drivers/staging/tidspbridge/rmgr/strm.c 

OBJS += \
./drivers/staging/tidspbridge/rmgr/dbdcd.o \
./drivers/staging/tidspbridge/rmgr/disp.o \
./drivers/staging/tidspbridge/rmgr/drv.o \
./drivers/staging/tidspbridge/rmgr/drv_interface.o \
./drivers/staging/tidspbridge/rmgr/dspdrv.o \
./drivers/staging/tidspbridge/rmgr/mgr.o \
./drivers/staging/tidspbridge/rmgr/nldr.o \
./drivers/staging/tidspbridge/rmgr/node.o \
./drivers/staging/tidspbridge/rmgr/proc.o \
./drivers/staging/tidspbridge/rmgr/pwr.o \
./drivers/staging/tidspbridge/rmgr/rmm.o \
./drivers/staging/tidspbridge/rmgr/strm.o 

C_DEPS += \
./drivers/staging/tidspbridge/rmgr/dbdcd.d \
./drivers/staging/tidspbridge/rmgr/disp.d \
./drivers/staging/tidspbridge/rmgr/drv.d \
./drivers/staging/tidspbridge/rmgr/drv_interface.d \
./drivers/staging/tidspbridge/rmgr/dspdrv.d \
./drivers/staging/tidspbridge/rmgr/mgr.d \
./drivers/staging/tidspbridge/rmgr/nldr.d \
./drivers/staging/tidspbridge/rmgr/node.d \
./drivers/staging/tidspbridge/rmgr/proc.d \
./drivers/staging/tidspbridge/rmgr/pwr.d \
./drivers/staging/tidspbridge/rmgr/rmm.d \
./drivers/staging/tidspbridge/rmgr/strm.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/tidspbridge/rmgr/%.o: ../drivers/staging/tidspbridge/rmgr/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



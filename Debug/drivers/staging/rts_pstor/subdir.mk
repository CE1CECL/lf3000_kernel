################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/rts_pstor/general.c \
../drivers/staging/rts_pstor/ms.c \
../drivers/staging/rts_pstor/rtsx.c \
../drivers/staging/rts_pstor/rtsx_card.c \
../drivers/staging/rts_pstor/rtsx_chip.c \
../drivers/staging/rts_pstor/rtsx_scsi.c \
../drivers/staging/rts_pstor/rtsx_transport.c \
../drivers/staging/rts_pstor/sd.c \
../drivers/staging/rts_pstor/spi.c \
../drivers/staging/rts_pstor/xd.c 

OBJS += \
./drivers/staging/rts_pstor/general.o \
./drivers/staging/rts_pstor/ms.o \
./drivers/staging/rts_pstor/rtsx.o \
./drivers/staging/rts_pstor/rtsx_card.o \
./drivers/staging/rts_pstor/rtsx_chip.o \
./drivers/staging/rts_pstor/rtsx_scsi.o \
./drivers/staging/rts_pstor/rtsx_transport.o \
./drivers/staging/rts_pstor/sd.o \
./drivers/staging/rts_pstor/spi.o \
./drivers/staging/rts_pstor/xd.o 

C_DEPS += \
./drivers/staging/rts_pstor/general.d \
./drivers/staging/rts_pstor/ms.d \
./drivers/staging/rts_pstor/rtsx.d \
./drivers/staging/rts_pstor/rtsx_card.d \
./drivers/staging/rts_pstor/rtsx_chip.d \
./drivers/staging/rts_pstor/rtsx_scsi.d \
./drivers/staging/rts_pstor/rtsx_transport.d \
./drivers/staging/rts_pstor/sd.d \
./drivers/staging/rts_pstor/spi.d \
./drivers/staging/rts_pstor/xd.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/rts_pstor/%.o: ../drivers/staging/rts_pstor/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



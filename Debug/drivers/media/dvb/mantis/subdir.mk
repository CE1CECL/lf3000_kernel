################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/dvb/mantis/hopper_cards.c \
../drivers/media/dvb/mantis/hopper_vp3028.c \
../drivers/media/dvb/mantis/mantis_ca.c \
../drivers/media/dvb/mantis/mantis_cards.c \
../drivers/media/dvb/mantis/mantis_core.c \
../drivers/media/dvb/mantis/mantis_dma.c \
../drivers/media/dvb/mantis/mantis_dvb.c \
../drivers/media/dvb/mantis/mantis_evm.c \
../drivers/media/dvb/mantis/mantis_hif.c \
../drivers/media/dvb/mantis/mantis_i2c.c \
../drivers/media/dvb/mantis/mantis_input.c \
../drivers/media/dvb/mantis/mantis_ioc.c \
../drivers/media/dvb/mantis/mantis_pci.c \
../drivers/media/dvb/mantis/mantis_pcmcia.c \
../drivers/media/dvb/mantis/mantis_uart.c \
../drivers/media/dvb/mantis/mantis_vp1033.c \
../drivers/media/dvb/mantis/mantis_vp1034.c \
../drivers/media/dvb/mantis/mantis_vp1041.c \
../drivers/media/dvb/mantis/mantis_vp2033.c \
../drivers/media/dvb/mantis/mantis_vp2040.c \
../drivers/media/dvb/mantis/mantis_vp3028.c \
../drivers/media/dvb/mantis/mantis_vp3030.c 

OBJS += \
./drivers/media/dvb/mantis/hopper_cards.o \
./drivers/media/dvb/mantis/hopper_vp3028.o \
./drivers/media/dvb/mantis/mantis_ca.o \
./drivers/media/dvb/mantis/mantis_cards.o \
./drivers/media/dvb/mantis/mantis_core.o \
./drivers/media/dvb/mantis/mantis_dma.o \
./drivers/media/dvb/mantis/mantis_dvb.o \
./drivers/media/dvb/mantis/mantis_evm.o \
./drivers/media/dvb/mantis/mantis_hif.o \
./drivers/media/dvb/mantis/mantis_i2c.o \
./drivers/media/dvb/mantis/mantis_input.o \
./drivers/media/dvb/mantis/mantis_ioc.o \
./drivers/media/dvb/mantis/mantis_pci.o \
./drivers/media/dvb/mantis/mantis_pcmcia.o \
./drivers/media/dvb/mantis/mantis_uart.o \
./drivers/media/dvb/mantis/mantis_vp1033.o \
./drivers/media/dvb/mantis/mantis_vp1034.o \
./drivers/media/dvb/mantis/mantis_vp1041.o \
./drivers/media/dvb/mantis/mantis_vp2033.o \
./drivers/media/dvb/mantis/mantis_vp2040.o \
./drivers/media/dvb/mantis/mantis_vp3028.o \
./drivers/media/dvb/mantis/mantis_vp3030.o 

C_DEPS += \
./drivers/media/dvb/mantis/hopper_cards.d \
./drivers/media/dvb/mantis/hopper_vp3028.d \
./drivers/media/dvb/mantis/mantis_ca.d \
./drivers/media/dvb/mantis/mantis_cards.d \
./drivers/media/dvb/mantis/mantis_core.d \
./drivers/media/dvb/mantis/mantis_dma.d \
./drivers/media/dvb/mantis/mantis_dvb.d \
./drivers/media/dvb/mantis/mantis_evm.d \
./drivers/media/dvb/mantis/mantis_hif.d \
./drivers/media/dvb/mantis/mantis_i2c.d \
./drivers/media/dvb/mantis/mantis_input.d \
./drivers/media/dvb/mantis/mantis_ioc.d \
./drivers/media/dvb/mantis/mantis_pci.d \
./drivers/media/dvb/mantis/mantis_pcmcia.d \
./drivers/media/dvb/mantis/mantis_uart.d \
./drivers/media/dvb/mantis/mantis_vp1033.d \
./drivers/media/dvb/mantis/mantis_vp1034.d \
./drivers/media/dvb/mantis/mantis_vp1041.d \
./drivers/media/dvb/mantis/mantis_vp2033.d \
./drivers/media/dvb/mantis/mantis_vp2040.d \
./drivers/media/dvb/mantis/mantis_vp3028.d \
./drivers/media/dvb/mantis/mantis_vp3030.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/dvb/mantis/%.o: ../drivers/media/dvb/mantis/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/pci/cs46xx/cs46xx.c \
../sound/pci/cs46xx/cs46xx_lib.c \
../sound/pci/cs46xx/dsp_spos.c \
../sound/pci/cs46xx/dsp_spos_scb_lib.c 

OBJS += \
./sound/pci/cs46xx/cs46xx.o \
./sound/pci/cs46xx/cs46xx_lib.o \
./sound/pci/cs46xx/dsp_spos.o \
./sound/pci/cs46xx/dsp_spos_scb_lib.o 

C_DEPS += \
./sound/pci/cs46xx/cs46xx.d \
./sound/pci/cs46xx/cs46xx_lib.d \
./sound/pci/cs46xx/dsp_spos.d \
./sound/pci/cs46xx/dsp_spos_scb_lib.d 


# Each subdirectory must supply rules for building sources it contributes
sound/pci/cs46xx/%.o: ../sound/pci/cs46xx/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



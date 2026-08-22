################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/ft1000/ft1000-pcmcia/ft1000_cs.c \
../drivers/staging/ft1000/ft1000-pcmcia/ft1000_dnld.c \
../drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c \
../drivers/staging/ft1000/ft1000-pcmcia/ft1000_proc.c 

OBJS += \
./drivers/staging/ft1000/ft1000-pcmcia/ft1000_cs.o \
./drivers/staging/ft1000/ft1000-pcmcia/ft1000_dnld.o \
./drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.o \
./drivers/staging/ft1000/ft1000-pcmcia/ft1000_proc.o 

C_DEPS += \
./drivers/staging/ft1000/ft1000-pcmcia/ft1000_cs.d \
./drivers/staging/ft1000/ft1000-pcmcia/ft1000_dnld.d \
./drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.d \
./drivers/staging/ft1000/ft1000-pcmcia/ft1000_proc.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/ft1000/ft1000-pcmcia/%.o: ../drivers/staging/ft1000/ft1000-pcmcia/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/char/pcmcia/cm4000_cs.c \
../drivers/char/pcmcia/cm4040_cs.c \
../drivers/char/pcmcia/synclink_cs.c 

OBJS += \
./drivers/char/pcmcia/cm4000_cs.o \
./drivers/char/pcmcia/cm4040_cs.o \
./drivers/char/pcmcia/synclink_cs.o 

C_DEPS += \
./drivers/char/pcmcia/cm4000_cs.d \
./drivers/char/pcmcia/cm4040_cs.d \
./drivers/char/pcmcia/synclink_cs.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/char/pcmcia/%.o: ../drivers/char/pcmcia/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



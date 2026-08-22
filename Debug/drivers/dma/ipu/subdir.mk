################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/dma/ipu/ipu_idmac.c \
../drivers/dma/ipu/ipu_irq.c 

OBJS += \
./drivers/dma/ipu/ipu_idmac.o \
./drivers/dma/ipu/ipu_irq.o 

C_DEPS += \
./drivers/dma/ipu/ipu_idmac.d \
./drivers/dma/ipu/ipu_irq.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/dma/ipu/%.o: ../drivers/dma/ipu/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



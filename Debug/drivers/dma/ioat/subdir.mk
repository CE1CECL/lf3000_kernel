################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/dma/ioat/dca.c \
../drivers/dma/ioat/dma.c \
../drivers/dma/ioat/dma_v2.c \
../drivers/dma/ioat/dma_v3.c \
../drivers/dma/ioat/pci.c 

OBJS += \
./drivers/dma/ioat/dca.o \
./drivers/dma/ioat/dma.o \
./drivers/dma/ioat/dma_v2.o \
./drivers/dma/ioat/dma_v3.o \
./drivers/dma/ioat/pci.o 

C_DEPS += \
./drivers/dma/ioat/dca.d \
./drivers/dma/ioat/dma.d \
./drivers/dma/ioat/dma_v2.d \
./drivers/dma/ioat/dma_v3.d \
./drivers/dma/ioat/pci.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/dma/ioat/%.o: ../drivers/dma/ioat/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/block/xen-blkback/blkback.c \
../drivers/block/xen-blkback/xenbus.c 

OBJS += \
./drivers/block/xen-blkback/blkback.o \
./drivers/block/xen-blkback/xenbus.o 

C_DEPS += \
./drivers/block/xen-blkback/blkback.d \
./drivers/block/xen-blkback/xenbus.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/block/xen-blkback/%.o: ../drivers/block/xen-blkback/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



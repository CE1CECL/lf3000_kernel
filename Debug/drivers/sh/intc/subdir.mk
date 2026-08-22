################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/sh/intc/access.c \
../drivers/sh/intc/balancing.c \
../drivers/sh/intc/chip.c \
../drivers/sh/intc/core.c \
../drivers/sh/intc/dynamic.c \
../drivers/sh/intc/handle.c \
../drivers/sh/intc/userimask.c \
../drivers/sh/intc/virq-debugfs.c \
../drivers/sh/intc/virq.c 

OBJS += \
./drivers/sh/intc/access.o \
./drivers/sh/intc/balancing.o \
./drivers/sh/intc/chip.o \
./drivers/sh/intc/core.o \
./drivers/sh/intc/dynamic.o \
./drivers/sh/intc/handle.o \
./drivers/sh/intc/userimask.o \
./drivers/sh/intc/virq-debugfs.o \
./drivers/sh/intc/virq.o 

C_DEPS += \
./drivers/sh/intc/access.d \
./drivers/sh/intc/balancing.d \
./drivers/sh/intc/chip.d \
./drivers/sh/intc/core.d \
./drivers/sh/intc/dynamic.d \
./drivers/sh/intc/handle.d \
./drivers/sh/intc/userimask.d \
./drivers/sh/intc/virq-debugfs.d \
./drivers/sh/intc/virq.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/sh/intc/%.o: ../drivers/sh/intc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



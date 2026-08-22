################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/base/power/built-in.o \
../drivers/base/power/common.o \
../drivers/base/power/generic_ops.o \
../drivers/base/power/main.o \
../drivers/base/power/qos.o \
../drivers/base/power/sysfs.o \
../drivers/base/power/wakeup.o 

C_SRCS += \
../drivers/base/power/clock_ops.c \
../drivers/base/power/common.c \
../drivers/base/power/domain.c \
../drivers/base/power/domain_governor.c \
../drivers/base/power/generic_ops.c \
../drivers/base/power/main.c \
../drivers/base/power/opp.c \
../drivers/base/power/qos.c \
../drivers/base/power/runtime.c \
../drivers/base/power/sysfs.c \
../drivers/base/power/trace.c \
../drivers/base/power/wakeup.c 

OBJS += \
./drivers/base/power/clock_ops.o \
./drivers/base/power/common.o \
./drivers/base/power/domain.o \
./drivers/base/power/domain_governor.o \
./drivers/base/power/generic_ops.o \
./drivers/base/power/main.o \
./drivers/base/power/opp.o \
./drivers/base/power/qos.o \
./drivers/base/power/runtime.o \
./drivers/base/power/sysfs.o \
./drivers/base/power/trace.o \
./drivers/base/power/wakeup.o 

C_DEPS += \
./drivers/base/power/clock_ops.d \
./drivers/base/power/common.d \
./drivers/base/power/domain.d \
./drivers/base/power/domain_governor.d \
./drivers/base/power/generic_ops.d \
./drivers/base/power/main.d \
./drivers/base/power/opp.d \
./drivers/base/power/qos.d \
./drivers/base/power/runtime.d \
./drivers/base/power/sysfs.d \
./drivers/base/power/trace.d \
./drivers/base/power/wakeup.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/base/power/%.o: ../drivers/base/power/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



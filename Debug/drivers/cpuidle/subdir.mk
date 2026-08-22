################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/cpuidle/built-in.o \
../drivers/cpuidle/cpuidle.o \
../drivers/cpuidle/driver.o \
../drivers/cpuidle/governor.o \
../drivers/cpuidle/sysfs.o 

C_SRCS += \
../drivers/cpuidle/coupled.c \
../drivers/cpuidle/cpuidle.c \
../drivers/cpuidle/driver.c \
../drivers/cpuidle/governor.c \
../drivers/cpuidle/sysfs.c 

OBJS += \
./drivers/cpuidle/coupled.o \
./drivers/cpuidle/cpuidle.o \
./drivers/cpuidle/driver.o \
./drivers/cpuidle/governor.o \
./drivers/cpuidle/sysfs.o 

C_DEPS += \
./drivers/cpuidle/coupled.d \
./drivers/cpuidle/cpuidle.d \
./drivers/cpuidle/driver.d \
./drivers/cpuidle/governor.d \
./drivers/cpuidle/sysfs.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/cpuidle/%.o: ../drivers/cpuidle/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



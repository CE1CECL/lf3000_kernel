################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/android/alarm-dev.c \
../drivers/staging/android/ashmem.c \
../drivers/staging/android/binder.c \
../drivers/staging/android/logger.c \
../drivers/staging/android/lowmemorykiller.c \
../drivers/staging/android/persistent_ram.c \
../drivers/staging/android/ram_console.c \
../drivers/staging/android/timed_gpio.c \
../drivers/staging/android/timed_output.c \
../drivers/staging/android/trace_persistent.c 

OBJS += \
./drivers/staging/android/alarm-dev.o \
./drivers/staging/android/ashmem.o \
./drivers/staging/android/binder.o \
./drivers/staging/android/logger.o \
./drivers/staging/android/lowmemorykiller.o \
./drivers/staging/android/persistent_ram.o \
./drivers/staging/android/ram_console.o \
./drivers/staging/android/timed_gpio.o \
./drivers/staging/android/timed_output.o \
./drivers/staging/android/trace_persistent.o 

C_DEPS += \
./drivers/staging/android/alarm-dev.d \
./drivers/staging/android/ashmem.d \
./drivers/staging/android/binder.d \
./drivers/staging/android/logger.d \
./drivers/staging/android/lowmemorykiller.d \
./drivers/staging/android/persistent_ram.d \
./drivers/staging/android/ram_console.d \
./drivers/staging/android/timed_gpio.d \
./drivers/staging/android/timed_output.d \
./drivers/staging/android/trace_persistent.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/android/%.o: ../drivers/staging/android/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



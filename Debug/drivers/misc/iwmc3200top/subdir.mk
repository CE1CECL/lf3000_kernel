################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/misc/iwmc3200top/debugfs.c \
../drivers/misc/iwmc3200top/fw-download.c \
../drivers/misc/iwmc3200top/log.c \
../drivers/misc/iwmc3200top/main.c 

OBJS += \
./drivers/misc/iwmc3200top/debugfs.o \
./drivers/misc/iwmc3200top/fw-download.o \
./drivers/misc/iwmc3200top/log.o \
./drivers/misc/iwmc3200top/main.o 

C_DEPS += \
./drivers/misc/iwmc3200top/debugfs.d \
./drivers/misc/iwmc3200top/fw-download.d \
./drivers/misc/iwmc3200top/log.d \
./drivers/misc/iwmc3200top/main.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/misc/iwmc3200top/%.o: ../drivers/misc/iwmc3200top/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



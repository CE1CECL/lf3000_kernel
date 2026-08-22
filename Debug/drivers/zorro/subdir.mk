################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/zorro/gen-devlist.c \
../drivers/zorro/names.c \
../drivers/zorro/proc.c \
../drivers/zorro/zorro-driver.c \
../drivers/zorro/zorro-sysfs.c \
../drivers/zorro/zorro.c 

OBJS += \
./drivers/zorro/gen-devlist.o \
./drivers/zorro/names.o \
./drivers/zorro/proc.o \
./drivers/zorro/zorro-driver.o \
./drivers/zorro/zorro-sysfs.o \
./drivers/zorro/zorro.o 

C_DEPS += \
./drivers/zorro/gen-devlist.d \
./drivers/zorro/names.d \
./drivers/zorro/proc.d \
./drivers/zorro/zorro-driver.d \
./drivers/zorro/zorro-sysfs.d \
./drivers/zorro/zorro.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/zorro/%.o: ../drivers/zorro/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



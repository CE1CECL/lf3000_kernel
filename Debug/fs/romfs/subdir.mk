################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/romfs/mmap-nommu.c \
../fs/romfs/storage.c \
../fs/romfs/super.c 

OBJS += \
./fs/romfs/mmap-nommu.o \
./fs/romfs/storage.o \
./fs/romfs/super.o 

C_DEPS += \
./fs/romfs/mmap-nommu.d \
./fs/romfs/storage.d \
./fs/romfs/super.d 


# Each subdirectory must supply rules for building sources it contributes
fs/romfs/%.o: ../fs/romfs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/nfs/blocklayout/blocklayout.c \
../fs/nfs/blocklayout/blocklayoutdev.c \
../fs/nfs/blocklayout/blocklayoutdm.c \
../fs/nfs/blocklayout/extents.c 

OBJS += \
./fs/nfs/blocklayout/blocklayout.o \
./fs/nfs/blocklayout/blocklayoutdev.o \
./fs/nfs/blocklayout/blocklayoutdm.o \
./fs/nfs/blocklayout/extents.o 

C_DEPS += \
./fs/nfs/blocklayout/blocklayout.d \
./fs/nfs/blocklayout/blocklayoutdev.d \
./fs/nfs/blocklayout/blocklayoutdm.d \
./fs/nfs/blocklayout/extents.d 


# Each subdirectory must supply rules for building sources it contributes
fs/nfs/blocklayout/%.o: ../fs/nfs/blocklayout/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



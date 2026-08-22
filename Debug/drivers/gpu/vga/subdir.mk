################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/gpu/vga/built-in.o 

C_SRCS += \
../drivers/gpu/vga/vga_switcheroo.c \
../drivers/gpu/vga/vgaarb.c 

OBJS += \
./drivers/gpu/vga/vga_switcheroo.o \
./drivers/gpu/vga/vgaarb.o 

C_DEPS += \
./drivers/gpu/vga/vga_switcheroo.d \
./drivers/gpu/vga/vgaarb.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/gpu/vga/%.o: ../drivers/gpu/vga/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/misc/ti-st/built-in.o 

C_SRCS += \
../drivers/misc/ti-st/st_core.c \
../drivers/misc/ti-st/st_kim.c \
../drivers/misc/ti-st/st_ll.c 

OBJS += \
./drivers/misc/ti-st/st_core.o \
./drivers/misc/ti-st/st_kim.o \
./drivers/misc/ti-st/st_ll.o 

C_DEPS += \
./drivers/misc/ti-st/st_core.d \
./drivers/misc/ti-st/st_kim.d \
./drivers/misc/ti-st/st_ll.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/misc/ti-st/%.o: ../drivers/misc/ti-st/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



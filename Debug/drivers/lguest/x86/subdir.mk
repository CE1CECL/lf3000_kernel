################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/lguest/x86/core.c 

S_UPPER_SRCS += \
../drivers/lguest/x86/switcher_32.S 

OBJS += \
./drivers/lguest/x86/core.o \
./drivers/lguest/x86/switcher_32.o 

C_DEPS += \
./drivers/lguest/x86/core.d 

S_UPPER_DEPS += \
./drivers/lguest/x86/switcher_32.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/lguest/x86/%.o: ../drivers/lguest/x86/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

drivers/lguest/x86/%.o: ../drivers/lguest/x86/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC Assembler'
	arm-elf-gcc -x assembler-with-cpp -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



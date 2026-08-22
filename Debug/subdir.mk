################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../.tmp_kallsyms1.o \
../.tmp_kallsyms2.o \
../.tmp_kallsyms3.o \
../vmlinux.o 

S_UPPER_SRCS += \
../.tmp_kallsyms1.S \
../.tmp_kallsyms2.S \
../.tmp_kallsyms3.S 

OBJS += \
./.tmp_kallsyms1.o \
./.tmp_kallsyms2.o \
./.tmp_kallsyms3.o 

S_UPPER_DEPS += \
./.tmp_kallsyms1.d \
./.tmp_kallsyms2.d \
./.tmp_kallsyms3.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC Assembler'
	arm-elf-gcc -x assembler-with-cpp -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



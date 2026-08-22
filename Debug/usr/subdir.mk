################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../usr/built-in.o \
../usr/initramfs_data.o 

C_SRCS += \
../usr/gen_init_cpio.c 

S_UPPER_SRCS += \
../usr/initramfs_data.S 

OBJS += \
./usr/gen_init_cpio.o \
./usr/initramfs_data.o 

C_DEPS += \
./usr/gen_init_cpio.d 

S_UPPER_DEPS += \
./usr/initramfs_data.d 


# Each subdirectory must supply rules for building sources it contributes
usr/%.o: ../usr/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

usr/%.o: ../usr/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC Assembler'
	arm-elf-gcc -x assembler-with-cpp -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



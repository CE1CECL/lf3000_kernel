################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../fs/nfs_common/built-in.o 

C_SRCS += \
../fs/nfs_common/nfsacl.c 

OBJS += \
./fs/nfs_common/nfsacl.o 

C_DEPS += \
./fs/nfs_common/nfsacl.d 


# Each subdirectory must supply rules for building sources it contributes
fs/nfs_common/%.o: ../fs/nfs_common/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



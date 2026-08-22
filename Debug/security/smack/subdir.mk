################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../security/smack/smack_access.c \
../security/smack/smack_lsm.c \
../security/smack/smackfs.c 

OBJS += \
./security/smack/smack_access.o \
./security/smack/smack_lsm.o \
./security/smack/smackfs.o 

C_DEPS += \
./security/smack/smack_access.d \
./security/smack/smack_lsm.d \
./security/smack/smackfs.d 


# Each subdirectory must supply rules for building sources it contributes
security/smack/%.o: ../security/smack/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



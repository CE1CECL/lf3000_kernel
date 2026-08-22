################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Documentation/prctl/disable-tsc-ctxt-sw-stress-test.c \
../Documentation/prctl/disable-tsc-on-off-stress-test.c \
../Documentation/prctl/disable-tsc-test.c 

OBJS += \
./Documentation/prctl/disable-tsc-ctxt-sw-stress-test.o \
./Documentation/prctl/disable-tsc-on-off-stress-test.o \
./Documentation/prctl/disable-tsc-test.o 

C_DEPS += \
./Documentation/prctl/disable-tsc-ctxt-sw-stress-test.d \
./Documentation/prctl/disable-tsc-on-off-stress-test.d \
./Documentation/prctl/disable-tsc-test.d 


# Each subdirectory must supply rules for building sources it contributes
Documentation/prctl/%.o: ../Documentation/prctl/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



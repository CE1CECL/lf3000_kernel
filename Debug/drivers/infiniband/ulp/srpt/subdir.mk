################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/infiniband/ulp/srpt/ib_srpt.c 

OBJS += \
./drivers/infiniband/ulp/srpt/ib_srpt.o 

C_DEPS += \
./drivers/infiniband/ulp/srpt/ib_srpt.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/infiniband/ulp/srpt/%.o: ../drivers/infiniband/ulp/srpt/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



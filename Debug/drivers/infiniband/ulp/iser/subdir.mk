################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/infiniband/ulp/iser/iscsi_iser.c \
../drivers/infiniband/ulp/iser/iser_initiator.c \
../drivers/infiniband/ulp/iser/iser_memory.c \
../drivers/infiniband/ulp/iser/iser_verbs.c 

OBJS += \
./drivers/infiniband/ulp/iser/iscsi_iser.o \
./drivers/infiniband/ulp/iser/iser_initiator.o \
./drivers/infiniband/ulp/iser/iser_memory.o \
./drivers/infiniband/ulp/iser/iser_verbs.o 

C_DEPS += \
./drivers/infiniband/ulp/iser/iscsi_iser.d \
./drivers/infiniband/ulp/iser/iser_initiator.d \
./drivers/infiniband/ulp/iser/iser_memory.d \
./drivers/infiniband/ulp/iser/iser_verbs.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/infiniband/ulp/iser/%.o: ../drivers/infiniband/ulp/iser/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



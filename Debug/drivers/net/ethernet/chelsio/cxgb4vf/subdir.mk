################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.c \
../drivers/net/ethernet/chelsio/cxgb4vf/sge.c \
../drivers/net/ethernet/chelsio/cxgb4vf/t4vf_hw.c 

OBJS += \
./drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.o \
./drivers/net/ethernet/chelsio/cxgb4vf/sge.o \
./drivers/net/ethernet/chelsio/cxgb4vf/t4vf_hw.o 

C_DEPS += \
./drivers/net/ethernet/chelsio/cxgb4vf/cxgb4vf_main.d \
./drivers/net/ethernet/chelsio/cxgb4vf/sge.d \
./drivers/net/ethernet/chelsio/cxgb4vf/t4vf_hw.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/chelsio/cxgb4vf/%.o: ../drivers/net/ethernet/chelsio/cxgb4vf/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



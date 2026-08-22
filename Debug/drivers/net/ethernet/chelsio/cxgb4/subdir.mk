################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c \
../drivers/net/ethernet/chelsio/cxgb4/l2t.c \
../drivers/net/ethernet/chelsio/cxgb4/sge.c \
../drivers/net/ethernet/chelsio/cxgb4/t4_hw.c 

OBJS += \
./drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.o \
./drivers/net/ethernet/chelsio/cxgb4/l2t.o \
./drivers/net/ethernet/chelsio/cxgb4/sge.o \
./drivers/net/ethernet/chelsio/cxgb4/t4_hw.o 

C_DEPS += \
./drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.d \
./drivers/net/ethernet/chelsio/cxgb4/l2t.d \
./drivers/net/ethernet/chelsio/cxgb4/sge.d \
./drivers/net/ethernet/chelsio/cxgb4/t4_hw.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/chelsio/cxgb4/%.o: ../drivers/net/ethernet/chelsio/cxgb4/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



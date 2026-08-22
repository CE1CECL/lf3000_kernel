################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/chelsio/cxgb3/ael1002.c \
../drivers/net/ethernet/chelsio/cxgb3/aq100x.c \
../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c \
../drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.c \
../drivers/net/ethernet/chelsio/cxgb3/l2t.c \
../drivers/net/ethernet/chelsio/cxgb3/mc5.c \
../drivers/net/ethernet/chelsio/cxgb3/sge.c \
../drivers/net/ethernet/chelsio/cxgb3/t3_hw.c \
../drivers/net/ethernet/chelsio/cxgb3/vsc8211.c \
../drivers/net/ethernet/chelsio/cxgb3/xgmac.c 

OBJS += \
./drivers/net/ethernet/chelsio/cxgb3/ael1002.o \
./drivers/net/ethernet/chelsio/cxgb3/aq100x.o \
./drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.o \
./drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.o \
./drivers/net/ethernet/chelsio/cxgb3/l2t.o \
./drivers/net/ethernet/chelsio/cxgb3/mc5.o \
./drivers/net/ethernet/chelsio/cxgb3/sge.o \
./drivers/net/ethernet/chelsio/cxgb3/t3_hw.o \
./drivers/net/ethernet/chelsio/cxgb3/vsc8211.o \
./drivers/net/ethernet/chelsio/cxgb3/xgmac.o 

C_DEPS += \
./drivers/net/ethernet/chelsio/cxgb3/ael1002.d \
./drivers/net/ethernet/chelsio/cxgb3/aq100x.d \
./drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.d \
./drivers/net/ethernet/chelsio/cxgb3/cxgb3_offload.d \
./drivers/net/ethernet/chelsio/cxgb3/l2t.d \
./drivers/net/ethernet/chelsio/cxgb3/mc5.d \
./drivers/net/ethernet/chelsio/cxgb3/sge.d \
./drivers/net/ethernet/chelsio/cxgb3/t3_hw.d \
./drivers/net/ethernet/chelsio/cxgb3/vsc8211.d \
./drivers/net/ethernet/chelsio/cxgb3/xgmac.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/chelsio/cxgb3/%.o: ../drivers/net/ethernet/chelsio/cxgb3/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



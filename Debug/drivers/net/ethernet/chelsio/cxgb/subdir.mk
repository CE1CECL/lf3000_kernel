################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/chelsio/cxgb/cxgb2.c \
../drivers/net/ethernet/chelsio/cxgb/espi.c \
../drivers/net/ethernet/chelsio/cxgb/mv88e1xxx.c \
../drivers/net/ethernet/chelsio/cxgb/mv88x201x.c \
../drivers/net/ethernet/chelsio/cxgb/my3126.c \
../drivers/net/ethernet/chelsio/cxgb/pm3393.c \
../drivers/net/ethernet/chelsio/cxgb/sge.c \
../drivers/net/ethernet/chelsio/cxgb/subr.c \
../drivers/net/ethernet/chelsio/cxgb/tp.c \
../drivers/net/ethernet/chelsio/cxgb/vsc7326.c 

OBJS += \
./drivers/net/ethernet/chelsio/cxgb/cxgb2.o \
./drivers/net/ethernet/chelsio/cxgb/espi.o \
./drivers/net/ethernet/chelsio/cxgb/mv88e1xxx.o \
./drivers/net/ethernet/chelsio/cxgb/mv88x201x.o \
./drivers/net/ethernet/chelsio/cxgb/my3126.o \
./drivers/net/ethernet/chelsio/cxgb/pm3393.o \
./drivers/net/ethernet/chelsio/cxgb/sge.o \
./drivers/net/ethernet/chelsio/cxgb/subr.o \
./drivers/net/ethernet/chelsio/cxgb/tp.o \
./drivers/net/ethernet/chelsio/cxgb/vsc7326.o 

C_DEPS += \
./drivers/net/ethernet/chelsio/cxgb/cxgb2.d \
./drivers/net/ethernet/chelsio/cxgb/espi.d \
./drivers/net/ethernet/chelsio/cxgb/mv88e1xxx.d \
./drivers/net/ethernet/chelsio/cxgb/mv88x201x.d \
./drivers/net/ethernet/chelsio/cxgb/my3126.d \
./drivers/net/ethernet/chelsio/cxgb/pm3393.d \
./drivers/net/ethernet/chelsio/cxgb/sge.d \
./drivers/net/ethernet/chelsio/cxgb/subr.d \
./drivers/net/ethernet/chelsio/cxgb/tp.d \
./drivers/net/ethernet/chelsio/cxgb/vsc7326.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/chelsio/cxgb/%.o: ../drivers/net/ethernet/chelsio/cxgb/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



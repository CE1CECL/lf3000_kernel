################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/qlogic/qlge/qlge_dbg.c \
../drivers/net/ethernet/qlogic/qlge/qlge_ethtool.c \
../drivers/net/ethernet/qlogic/qlge/qlge_main.c \
../drivers/net/ethernet/qlogic/qlge/qlge_mpi.c 

OBJS += \
./drivers/net/ethernet/qlogic/qlge/qlge_dbg.o \
./drivers/net/ethernet/qlogic/qlge/qlge_ethtool.o \
./drivers/net/ethernet/qlogic/qlge/qlge_main.o \
./drivers/net/ethernet/qlogic/qlge/qlge_mpi.o 

C_DEPS += \
./drivers/net/ethernet/qlogic/qlge/qlge_dbg.d \
./drivers/net/ethernet/qlogic/qlge/qlge_ethtool.d \
./drivers/net/ethernet/qlogic/qlge/qlge_main.d \
./drivers/net/ethernet/qlogic/qlge/qlge_mpi.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/qlogic/qlge/%.o: ../drivers/net/ethernet/qlogic/qlge/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



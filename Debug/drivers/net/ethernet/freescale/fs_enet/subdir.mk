################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/freescale/fs_enet/fs_enet-main.c \
../drivers/net/ethernet/freescale/fs_enet/mac-fcc.c \
../drivers/net/ethernet/freescale/fs_enet/mac-fec.c \
../drivers/net/ethernet/freescale/fs_enet/mac-scc.c \
../drivers/net/ethernet/freescale/fs_enet/mii-bitbang.c \
../drivers/net/ethernet/freescale/fs_enet/mii-fec.c 

OBJS += \
./drivers/net/ethernet/freescale/fs_enet/fs_enet-main.o \
./drivers/net/ethernet/freescale/fs_enet/mac-fcc.o \
./drivers/net/ethernet/freescale/fs_enet/mac-fec.o \
./drivers/net/ethernet/freescale/fs_enet/mac-scc.o \
./drivers/net/ethernet/freescale/fs_enet/mii-bitbang.o \
./drivers/net/ethernet/freescale/fs_enet/mii-fec.o 

C_DEPS += \
./drivers/net/ethernet/freescale/fs_enet/fs_enet-main.d \
./drivers/net/ethernet/freescale/fs_enet/mac-fcc.d \
./drivers/net/ethernet/freescale/fs_enet/mac-fec.d \
./drivers/net/ethernet/freescale/fs_enet/mac-scc.d \
./drivers/net/ethernet/freescale/fs_enet/mii-bitbang.d \
./drivers/net/ethernet/freescale/fs_enet/mii-fec.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/freescale/fs_enet/%.o: ../drivers/net/ethernet/freescale/fs_enet/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



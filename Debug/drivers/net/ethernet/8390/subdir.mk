################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ethernet/8390/3c503.c \
../drivers/net/ethernet/8390/8390.c \
../drivers/net/ethernet/8390/8390p.c \
../drivers/net/ethernet/8390/ac3200.c \
../drivers/net/ethernet/8390/apne.c \
../drivers/net/ethernet/8390/ax88796.c \
../drivers/net/ethernet/8390/axnet_cs.c \
../drivers/net/ethernet/8390/e2100.c \
../drivers/net/ethernet/8390/es3210.c \
../drivers/net/ethernet/8390/etherh.c \
../drivers/net/ethernet/8390/hp-plus.c \
../drivers/net/ethernet/8390/hp.c \
../drivers/net/ethernet/8390/hydra.c \
../drivers/net/ethernet/8390/lib8390.c \
../drivers/net/ethernet/8390/lne390.c \
../drivers/net/ethernet/8390/mac8390.c \
../drivers/net/ethernet/8390/ne-h8300.c \
../drivers/net/ethernet/8390/ne.c \
../drivers/net/ethernet/8390/ne2.c \
../drivers/net/ethernet/8390/ne2k-pci.c \
../drivers/net/ethernet/8390/ne3210.c \
../drivers/net/ethernet/8390/pcnet_cs.c \
../drivers/net/ethernet/8390/smc-mca.c \
../drivers/net/ethernet/8390/smc-ultra.c \
../drivers/net/ethernet/8390/smc-ultra32.c \
../drivers/net/ethernet/8390/stnic.c \
../drivers/net/ethernet/8390/wd.c \
../drivers/net/ethernet/8390/zorro8390.c 

OBJS += \
./drivers/net/ethernet/8390/3c503.o \
./drivers/net/ethernet/8390/8390.o \
./drivers/net/ethernet/8390/8390p.o \
./drivers/net/ethernet/8390/ac3200.o \
./drivers/net/ethernet/8390/apne.o \
./drivers/net/ethernet/8390/ax88796.o \
./drivers/net/ethernet/8390/axnet_cs.o \
./drivers/net/ethernet/8390/e2100.o \
./drivers/net/ethernet/8390/es3210.o \
./drivers/net/ethernet/8390/etherh.o \
./drivers/net/ethernet/8390/hp-plus.o \
./drivers/net/ethernet/8390/hp.o \
./drivers/net/ethernet/8390/hydra.o \
./drivers/net/ethernet/8390/lib8390.o \
./drivers/net/ethernet/8390/lne390.o \
./drivers/net/ethernet/8390/mac8390.o \
./drivers/net/ethernet/8390/ne-h8300.o \
./drivers/net/ethernet/8390/ne.o \
./drivers/net/ethernet/8390/ne2.o \
./drivers/net/ethernet/8390/ne2k-pci.o \
./drivers/net/ethernet/8390/ne3210.o \
./drivers/net/ethernet/8390/pcnet_cs.o \
./drivers/net/ethernet/8390/smc-mca.o \
./drivers/net/ethernet/8390/smc-ultra.o \
./drivers/net/ethernet/8390/smc-ultra32.o \
./drivers/net/ethernet/8390/stnic.o \
./drivers/net/ethernet/8390/wd.o \
./drivers/net/ethernet/8390/zorro8390.o 

C_DEPS += \
./drivers/net/ethernet/8390/3c503.d \
./drivers/net/ethernet/8390/8390.d \
./drivers/net/ethernet/8390/8390p.d \
./drivers/net/ethernet/8390/ac3200.d \
./drivers/net/ethernet/8390/apne.d \
./drivers/net/ethernet/8390/ax88796.d \
./drivers/net/ethernet/8390/axnet_cs.d \
./drivers/net/ethernet/8390/e2100.d \
./drivers/net/ethernet/8390/es3210.d \
./drivers/net/ethernet/8390/etherh.d \
./drivers/net/ethernet/8390/hp-plus.d \
./drivers/net/ethernet/8390/hp.d \
./drivers/net/ethernet/8390/hydra.d \
./drivers/net/ethernet/8390/lib8390.d \
./drivers/net/ethernet/8390/lne390.d \
./drivers/net/ethernet/8390/mac8390.d \
./drivers/net/ethernet/8390/ne-h8300.d \
./drivers/net/ethernet/8390/ne.d \
./drivers/net/ethernet/8390/ne2.d \
./drivers/net/ethernet/8390/ne2k-pci.d \
./drivers/net/ethernet/8390/ne3210.d \
./drivers/net/ethernet/8390/pcnet_cs.d \
./drivers/net/ethernet/8390/smc-mca.d \
./drivers/net/ethernet/8390/smc-ultra.d \
./drivers/net/ethernet/8390/smc-ultra32.d \
./drivers/net/ethernet/8390/stnic.d \
./drivers/net/ethernet/8390/wd.d \
./drivers/net/ethernet/8390/zorro8390.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ethernet/8390/%.o: ../drivers/net/ethernet/8390/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



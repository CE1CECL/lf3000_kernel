################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/wan/c101.c \
../drivers/net/wan/cosa.c \
../drivers/net/wan/cycx_drv.c \
../drivers/net/wan/cycx_main.c \
../drivers/net/wan/cycx_x25.c \
../drivers/net/wan/dlci.c \
../drivers/net/wan/dscc4.c \
../drivers/net/wan/farsync.c \
../drivers/net/wan/hd64570.c \
../drivers/net/wan/hd64572.c \
../drivers/net/wan/hdlc.c \
../drivers/net/wan/hdlc_cisco.c \
../drivers/net/wan/hdlc_fr.c \
../drivers/net/wan/hdlc_ppp.c \
../drivers/net/wan/hdlc_raw.c \
../drivers/net/wan/hdlc_raw_eth.c \
../drivers/net/wan/hdlc_x25.c \
../drivers/net/wan/hostess_sv11.c \
../drivers/net/wan/ixp4xx_hss.c \
../drivers/net/wan/lapbether.c \
../drivers/net/wan/n2.c \
../drivers/net/wan/pc300_drv.c \
../drivers/net/wan/pc300_tty.c \
../drivers/net/wan/pc300too.c \
../drivers/net/wan/pci200syn.c \
../drivers/net/wan/sbni.c \
../drivers/net/wan/sdla.c \
../drivers/net/wan/sealevel.c \
../drivers/net/wan/wanxl.c \
../drivers/net/wan/x25_asy.c \
../drivers/net/wan/z85230.c 

S_UPPER_SRCS += \
../drivers/net/wan/wanxlfw.S 

OBJS += \
./drivers/net/wan/c101.o \
./drivers/net/wan/cosa.o \
./drivers/net/wan/cycx_drv.o \
./drivers/net/wan/cycx_main.o \
./drivers/net/wan/cycx_x25.o \
./drivers/net/wan/dlci.o \
./drivers/net/wan/dscc4.o \
./drivers/net/wan/farsync.o \
./drivers/net/wan/hd64570.o \
./drivers/net/wan/hd64572.o \
./drivers/net/wan/hdlc.o \
./drivers/net/wan/hdlc_cisco.o \
./drivers/net/wan/hdlc_fr.o \
./drivers/net/wan/hdlc_ppp.o \
./drivers/net/wan/hdlc_raw.o \
./drivers/net/wan/hdlc_raw_eth.o \
./drivers/net/wan/hdlc_x25.o \
./drivers/net/wan/hostess_sv11.o \
./drivers/net/wan/ixp4xx_hss.o \
./drivers/net/wan/lapbether.o \
./drivers/net/wan/n2.o \
./drivers/net/wan/pc300_drv.o \
./drivers/net/wan/pc300_tty.o \
./drivers/net/wan/pc300too.o \
./drivers/net/wan/pci200syn.o \
./drivers/net/wan/sbni.o \
./drivers/net/wan/sdla.o \
./drivers/net/wan/sealevel.o \
./drivers/net/wan/wanxl.o \
./drivers/net/wan/wanxlfw.o \
./drivers/net/wan/x25_asy.o \
./drivers/net/wan/z85230.o 

C_DEPS += \
./drivers/net/wan/c101.d \
./drivers/net/wan/cosa.d \
./drivers/net/wan/cycx_drv.d \
./drivers/net/wan/cycx_main.d \
./drivers/net/wan/cycx_x25.d \
./drivers/net/wan/dlci.d \
./drivers/net/wan/dscc4.d \
./drivers/net/wan/farsync.d \
./drivers/net/wan/hd64570.d \
./drivers/net/wan/hd64572.d \
./drivers/net/wan/hdlc.d \
./drivers/net/wan/hdlc_cisco.d \
./drivers/net/wan/hdlc_fr.d \
./drivers/net/wan/hdlc_ppp.d \
./drivers/net/wan/hdlc_raw.d \
./drivers/net/wan/hdlc_raw_eth.d \
./drivers/net/wan/hdlc_x25.d \
./drivers/net/wan/hostess_sv11.d \
./drivers/net/wan/ixp4xx_hss.d \
./drivers/net/wan/lapbether.d \
./drivers/net/wan/n2.d \
./drivers/net/wan/pc300_drv.d \
./drivers/net/wan/pc300_tty.d \
./drivers/net/wan/pc300too.d \
./drivers/net/wan/pci200syn.d \
./drivers/net/wan/sbni.d \
./drivers/net/wan/sdla.d \
./drivers/net/wan/sealevel.d \
./drivers/net/wan/wanxl.d \
./drivers/net/wan/x25_asy.d \
./drivers/net/wan/z85230.d 

S_UPPER_DEPS += \
./drivers/net/wan/wanxlfw.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/wan/%.o: ../drivers/net/wan/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

drivers/net/wan/%.o: ../drivers/net/wan/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC Assembler'
	arm-elf-gcc -x assembler-with-cpp -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



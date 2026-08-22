################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/irda/act200l-sir.c \
../drivers/net/irda/actisys-sir.c \
../drivers/net/irda/ali-ircc.c \
../drivers/net/irda/au1k_ir.c \
../drivers/net/irda/bfin_sir.c \
../drivers/net/irda/donauboe.c \
../drivers/net/irda/ep7211-sir.c \
../drivers/net/irda/esi-sir.c \
../drivers/net/irda/girbil-sir.c \
../drivers/net/irda/irda-usb.c \
../drivers/net/irda/irtty-sir.c \
../drivers/net/irda/kingsun-sir.c \
../drivers/net/irda/ks959-sir.c \
../drivers/net/irda/ksdazzle-sir.c \
../drivers/net/irda/litelink-sir.c \
../drivers/net/irda/ma600-sir.c \
../drivers/net/irda/mcp2120-sir.c \
../drivers/net/irda/mcs7780.c \
../drivers/net/irda/nsc-ircc.c \
../drivers/net/irda/old_belkin-sir.c \
../drivers/net/irda/pxaficp_ir.c \
../drivers/net/irda/sa1100_ir.c \
../drivers/net/irda/sh_irda.c \
../drivers/net/irda/sh_sir.c \
../drivers/net/irda/sir_dev.c \
../drivers/net/irda/sir_dongle.c \
../drivers/net/irda/smsc-ircc2.c \
../drivers/net/irda/stir4200.c \
../drivers/net/irda/tekram-sir.c \
../drivers/net/irda/toim3232-sir.c \
../drivers/net/irda/via-ircc.c \
../drivers/net/irda/vlsi_ir.c \
../drivers/net/irda/w83977af_ir.c 

OBJS += \
./drivers/net/irda/act200l-sir.o \
./drivers/net/irda/actisys-sir.o \
./drivers/net/irda/ali-ircc.o \
./drivers/net/irda/au1k_ir.o \
./drivers/net/irda/bfin_sir.o \
./drivers/net/irda/donauboe.o \
./drivers/net/irda/ep7211-sir.o \
./drivers/net/irda/esi-sir.o \
./drivers/net/irda/girbil-sir.o \
./drivers/net/irda/irda-usb.o \
./drivers/net/irda/irtty-sir.o \
./drivers/net/irda/kingsun-sir.o \
./drivers/net/irda/ks959-sir.o \
./drivers/net/irda/ksdazzle-sir.o \
./drivers/net/irda/litelink-sir.o \
./drivers/net/irda/ma600-sir.o \
./drivers/net/irda/mcp2120-sir.o \
./drivers/net/irda/mcs7780.o \
./drivers/net/irda/nsc-ircc.o \
./drivers/net/irda/old_belkin-sir.o \
./drivers/net/irda/pxaficp_ir.o \
./drivers/net/irda/sa1100_ir.o \
./drivers/net/irda/sh_irda.o \
./drivers/net/irda/sh_sir.o \
./drivers/net/irda/sir_dev.o \
./drivers/net/irda/sir_dongle.o \
./drivers/net/irda/smsc-ircc2.o \
./drivers/net/irda/stir4200.o \
./drivers/net/irda/tekram-sir.o \
./drivers/net/irda/toim3232-sir.o \
./drivers/net/irda/via-ircc.o \
./drivers/net/irda/vlsi_ir.o \
./drivers/net/irda/w83977af_ir.o 

C_DEPS += \
./drivers/net/irda/act200l-sir.d \
./drivers/net/irda/actisys-sir.d \
./drivers/net/irda/ali-ircc.d \
./drivers/net/irda/au1k_ir.d \
./drivers/net/irda/bfin_sir.d \
./drivers/net/irda/donauboe.d \
./drivers/net/irda/ep7211-sir.d \
./drivers/net/irda/esi-sir.d \
./drivers/net/irda/girbil-sir.d \
./drivers/net/irda/irda-usb.d \
./drivers/net/irda/irtty-sir.d \
./drivers/net/irda/kingsun-sir.d \
./drivers/net/irda/ks959-sir.d \
./drivers/net/irda/ksdazzle-sir.d \
./drivers/net/irda/litelink-sir.d \
./drivers/net/irda/ma600-sir.d \
./drivers/net/irda/mcp2120-sir.d \
./drivers/net/irda/mcs7780.d \
./drivers/net/irda/nsc-ircc.d \
./drivers/net/irda/old_belkin-sir.d \
./drivers/net/irda/pxaficp_ir.d \
./drivers/net/irda/sa1100_ir.d \
./drivers/net/irda/sh_irda.d \
./drivers/net/irda/sh_sir.d \
./drivers/net/irda/sir_dev.d \
./drivers/net/irda/sir_dongle.d \
./drivers/net/irda/smsc-ircc2.d \
./drivers/net/irda/stir4200.d \
./drivers/net/irda/tekram-sir.d \
./drivers/net/irda/toim3232-sir.d \
./drivers/net/irda/via-ircc.d \
./drivers/net/irda/vlsi_ir.d \
./drivers/net/irda/w83977af_ir.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/irda/%.o: ../drivers/net/irda/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



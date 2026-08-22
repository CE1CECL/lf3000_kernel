################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/tty/serial/8250/8250.c \
../drivers/tty/serial/8250/8250_accent.c \
../drivers/tty/serial/8250/8250_acorn.c \
../drivers/tty/serial/8250/8250_boca.c \
../drivers/tty/serial/8250/8250_dw.c \
../drivers/tty/serial/8250/8250_early.c \
../drivers/tty/serial/8250/8250_exar_st16c554.c \
../drivers/tty/serial/8250/8250_fourport.c \
../drivers/tty/serial/8250/8250_fsl.c \
../drivers/tty/serial/8250/8250_gsc.c \
../drivers/tty/serial/8250/8250_hp300.c \
../drivers/tty/serial/8250/8250_hub6.c \
../drivers/tty/serial/8250/8250_mca.c \
../drivers/tty/serial/8250/8250_pci.c \
../drivers/tty/serial/8250/8250_pnp.c \
../drivers/tty/serial/8250/serial_cs.c 

OBJS += \
./drivers/tty/serial/8250/8250.o \
./drivers/tty/serial/8250/8250_accent.o \
./drivers/tty/serial/8250/8250_acorn.o \
./drivers/tty/serial/8250/8250_boca.o \
./drivers/tty/serial/8250/8250_dw.o \
./drivers/tty/serial/8250/8250_early.o \
./drivers/tty/serial/8250/8250_exar_st16c554.o \
./drivers/tty/serial/8250/8250_fourport.o \
./drivers/tty/serial/8250/8250_fsl.o \
./drivers/tty/serial/8250/8250_gsc.o \
./drivers/tty/serial/8250/8250_hp300.o \
./drivers/tty/serial/8250/8250_hub6.o \
./drivers/tty/serial/8250/8250_mca.o \
./drivers/tty/serial/8250/8250_pci.o \
./drivers/tty/serial/8250/8250_pnp.o \
./drivers/tty/serial/8250/serial_cs.o 

C_DEPS += \
./drivers/tty/serial/8250/8250.d \
./drivers/tty/serial/8250/8250_accent.d \
./drivers/tty/serial/8250/8250_acorn.d \
./drivers/tty/serial/8250/8250_boca.d \
./drivers/tty/serial/8250/8250_dw.d \
./drivers/tty/serial/8250/8250_early.d \
./drivers/tty/serial/8250/8250_exar_st16c554.d \
./drivers/tty/serial/8250/8250_fourport.d \
./drivers/tty/serial/8250/8250_fsl.d \
./drivers/tty/serial/8250/8250_gsc.d \
./drivers/tty/serial/8250/8250_hp300.d \
./drivers/tty/serial/8250/8250_hub6.d \
./drivers/tty/serial/8250/8250_mca.d \
./drivers/tty/serial/8250/8250_pci.d \
./drivers/tty/serial/8250/8250_pnp.d \
./drivers/tty/serial/8250/serial_cs.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/tty/serial/8250/%.o: ../drivers/tty/serial/8250/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



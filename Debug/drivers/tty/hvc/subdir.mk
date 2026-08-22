################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/tty/hvc/hvc_beat.c \
../drivers/tty/hvc/hvc_bfin_jtag.c \
../drivers/tty/hvc/hvc_console.c \
../drivers/tty/hvc/hvc_dcc.c \
../drivers/tty/hvc/hvc_irq.c \
../drivers/tty/hvc/hvc_iucv.c \
../drivers/tty/hvc/hvc_opal.c \
../drivers/tty/hvc/hvc_rtas.c \
../drivers/tty/hvc/hvc_tile.c \
../drivers/tty/hvc/hvc_udbg.c \
../drivers/tty/hvc/hvc_vio.c \
../drivers/tty/hvc/hvc_xen.c \
../drivers/tty/hvc/hvcs.c \
../drivers/tty/hvc/hvsi.c \
../drivers/tty/hvc/hvsi_lib.c 

OBJS += \
./drivers/tty/hvc/hvc_beat.o \
./drivers/tty/hvc/hvc_bfin_jtag.o \
./drivers/tty/hvc/hvc_console.o \
./drivers/tty/hvc/hvc_dcc.o \
./drivers/tty/hvc/hvc_irq.o \
./drivers/tty/hvc/hvc_iucv.o \
./drivers/tty/hvc/hvc_opal.o \
./drivers/tty/hvc/hvc_rtas.o \
./drivers/tty/hvc/hvc_tile.o \
./drivers/tty/hvc/hvc_udbg.o \
./drivers/tty/hvc/hvc_vio.o \
./drivers/tty/hvc/hvc_xen.o \
./drivers/tty/hvc/hvcs.o \
./drivers/tty/hvc/hvsi.o \
./drivers/tty/hvc/hvsi_lib.o 

C_DEPS += \
./drivers/tty/hvc/hvc_beat.d \
./drivers/tty/hvc/hvc_bfin_jtag.d \
./drivers/tty/hvc/hvc_console.d \
./drivers/tty/hvc/hvc_dcc.d \
./drivers/tty/hvc/hvc_irq.d \
./drivers/tty/hvc/hvc_iucv.d \
./drivers/tty/hvc/hvc_opal.d \
./drivers/tty/hvc/hvc_rtas.d \
./drivers/tty/hvc/hvc_tile.d \
./drivers/tty/hvc/hvc_udbg.d \
./drivers/tty/hvc/hvc_vio.d \
./drivers/tty/hvc/hvc_xen.d \
./drivers/tty/hvc/hvcs.d \
./drivers/tty/hvc/hvsi.d \
./drivers/tty/hvc/hvsi_lib.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/tty/hvc/%.o: ../drivers/tty/hvc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



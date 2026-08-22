################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/tty/built-in.o \
../drivers/tty/n_tty.o \
../drivers/tty/pty.o \
../drivers/tty/sysrq.o \
../drivers/tty/tty_audit.o \
../drivers/tty/tty_buffer.o \
../drivers/tty/tty_io.o \
../drivers/tty/tty_ioctl.o \
../drivers/tty/tty_ldisc.o \
../drivers/tty/tty_mutex.o \
../drivers/tty/tty_port.o 

C_SRCS += \
../drivers/tty/amiserial.c \
../drivers/tty/bfin_jtag_comm.c \
../drivers/tty/cyclades.c \
../drivers/tty/ehv_bytechan.c \
../drivers/tty/isicom.c \
../drivers/tty/moxa.c \
../drivers/tty/mxser.c \
../drivers/tty/n_gsm.c \
../drivers/tty/n_hdlc.c \
../drivers/tty/n_r3964.c \
../drivers/tty/n_tracerouter.c \
../drivers/tty/n_tracesink.c \
../drivers/tty/n_tty.c \
../drivers/tty/nozomi.c \
../drivers/tty/pty.c \
../drivers/tty/rocket.c \
../drivers/tty/synclink.c \
../drivers/tty/synclink_gt.c \
../drivers/tty/synclinkmp.c \
../drivers/tty/sysrq.c \
../drivers/tty/tty_audit.c \
../drivers/tty/tty_buffer.c \
../drivers/tty/tty_io.c \
../drivers/tty/tty_ioctl.c \
../drivers/tty/tty_ldisc.c \
../drivers/tty/tty_mutex.c \
../drivers/tty/tty_port.c 

OBJS += \
./drivers/tty/amiserial.o \
./drivers/tty/bfin_jtag_comm.o \
./drivers/tty/cyclades.o \
./drivers/tty/ehv_bytechan.o \
./drivers/tty/isicom.o \
./drivers/tty/moxa.o \
./drivers/tty/mxser.o \
./drivers/tty/n_gsm.o \
./drivers/tty/n_hdlc.o \
./drivers/tty/n_r3964.o \
./drivers/tty/n_tracerouter.o \
./drivers/tty/n_tracesink.o \
./drivers/tty/n_tty.o \
./drivers/tty/nozomi.o \
./drivers/tty/pty.o \
./drivers/tty/rocket.o \
./drivers/tty/synclink.o \
./drivers/tty/synclink_gt.o \
./drivers/tty/synclinkmp.o \
./drivers/tty/sysrq.o \
./drivers/tty/tty_audit.o \
./drivers/tty/tty_buffer.o \
./drivers/tty/tty_io.o \
./drivers/tty/tty_ioctl.o \
./drivers/tty/tty_ldisc.o \
./drivers/tty/tty_mutex.o \
./drivers/tty/tty_port.o 

C_DEPS += \
./drivers/tty/amiserial.d \
./drivers/tty/bfin_jtag_comm.d \
./drivers/tty/cyclades.d \
./drivers/tty/ehv_bytechan.d \
./drivers/tty/isicom.d \
./drivers/tty/moxa.d \
./drivers/tty/mxser.d \
./drivers/tty/n_gsm.d \
./drivers/tty/n_hdlc.d \
./drivers/tty/n_r3964.d \
./drivers/tty/n_tracerouter.d \
./drivers/tty/n_tracesink.d \
./drivers/tty/n_tty.d \
./drivers/tty/nozomi.d \
./drivers/tty/pty.d \
./drivers/tty/rocket.d \
./drivers/tty/synclink.d \
./drivers/tty/synclink_gt.d \
./drivers/tty/synclinkmp.d \
./drivers/tty/sysrq.d \
./drivers/tty/tty_audit.d \
./drivers/tty/tty_buffer.d \
./drivers/tty/tty_io.d \
./drivers/tty/tty_ioctl.d \
./drivers/tty/tty_ldisc.d \
./drivers/tty/tty_mutex.d \
./drivers/tty/tty_port.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/tty/%.o: ../drivers/tty/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



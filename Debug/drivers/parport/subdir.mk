################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/parport/daisy.c \
../drivers/parport/ieee1284.c \
../drivers/parport/ieee1284_ops.c \
../drivers/parport/parport_amiga.c \
../drivers/parport/parport_atari.c \
../drivers/parport/parport_ax88796.c \
../drivers/parport/parport_cs.c \
../drivers/parport/parport_gsc.c \
../drivers/parport/parport_ip32.c \
../drivers/parport/parport_mfc3.c \
../drivers/parport/parport_pc.c \
../drivers/parport/parport_serial.c \
../drivers/parport/parport_sunbpp.c \
../drivers/parport/probe.c \
../drivers/parport/procfs.c \
../drivers/parport/share.c 

OBJS += \
./drivers/parport/daisy.o \
./drivers/parport/ieee1284.o \
./drivers/parport/ieee1284_ops.o \
./drivers/parport/parport_amiga.o \
./drivers/parport/parport_atari.o \
./drivers/parport/parport_ax88796.o \
./drivers/parport/parport_cs.o \
./drivers/parport/parport_gsc.o \
./drivers/parport/parport_ip32.o \
./drivers/parport/parport_mfc3.o \
./drivers/parport/parport_pc.o \
./drivers/parport/parport_serial.o \
./drivers/parport/parport_sunbpp.o \
./drivers/parport/probe.o \
./drivers/parport/procfs.o \
./drivers/parport/share.o 

C_DEPS += \
./drivers/parport/daisy.d \
./drivers/parport/ieee1284.d \
./drivers/parport/ieee1284_ops.d \
./drivers/parport/parport_amiga.d \
./drivers/parport/parport_atari.d \
./drivers/parport/parport_ax88796.d \
./drivers/parport/parport_cs.d \
./drivers/parport/parport_gsc.d \
./drivers/parport/parport_ip32.d \
./drivers/parport/parport_mfc3.d \
./drivers/parport/parport_pc.d \
./drivers/parport/parport_serial.d \
./drivers/parport/parport_sunbpp.d \
./drivers/parport/probe.d \
./drivers/parport/procfs.d \
./drivers/parport/share.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/parport/%.o: ../drivers/parport/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



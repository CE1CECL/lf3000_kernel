################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/input/serio/built-in.o \
../drivers/input/serio/libps2.o \
../drivers/input/serio/serio.o \
../drivers/input/serio/serport.mod.o \
../drivers/input/serio/serport.o 

C_SRCS += \
../drivers/input/serio/altera_ps2.c \
../drivers/input/serio/ambakmi.c \
../drivers/input/serio/ams_delta_serio.c \
../drivers/input/serio/at32psif.c \
../drivers/input/serio/ct82c710.c \
../drivers/input/serio/gscps2.c \
../drivers/input/serio/hil_mlc.c \
../drivers/input/serio/hp_sdc.c \
../drivers/input/serio/hp_sdc_mlc.c \
../drivers/input/serio/i8042.c \
../drivers/input/serio/libps2.c \
../drivers/input/serio/maceps2.c \
../drivers/input/serio/parkbd.c \
../drivers/input/serio/pcips2.c \
../drivers/input/serio/ps2mult.c \
../drivers/input/serio/q40kbd.c \
../drivers/input/serio/rpckbd.c \
../drivers/input/serio/sa1111ps2.c \
../drivers/input/serio/serio.c \
../drivers/input/serio/serio_raw.c \
../drivers/input/serio/serport.c \
../drivers/input/serio/serport.mod.c \
../drivers/input/serio/xilinx_ps2.c 

OBJS += \
./drivers/input/serio/altera_ps2.o \
./drivers/input/serio/ambakmi.o \
./drivers/input/serio/ams_delta_serio.o \
./drivers/input/serio/at32psif.o \
./drivers/input/serio/ct82c710.o \
./drivers/input/serio/gscps2.o \
./drivers/input/serio/hil_mlc.o \
./drivers/input/serio/hp_sdc.o \
./drivers/input/serio/hp_sdc_mlc.o \
./drivers/input/serio/i8042.o \
./drivers/input/serio/libps2.o \
./drivers/input/serio/maceps2.o \
./drivers/input/serio/parkbd.o \
./drivers/input/serio/pcips2.o \
./drivers/input/serio/ps2mult.o \
./drivers/input/serio/q40kbd.o \
./drivers/input/serio/rpckbd.o \
./drivers/input/serio/sa1111ps2.o \
./drivers/input/serio/serio.o \
./drivers/input/serio/serio_raw.o \
./drivers/input/serio/serport.o \
./drivers/input/serio/serport.mod.o \
./drivers/input/serio/xilinx_ps2.o 

C_DEPS += \
./drivers/input/serio/altera_ps2.d \
./drivers/input/serio/ambakmi.d \
./drivers/input/serio/ams_delta_serio.d \
./drivers/input/serio/at32psif.d \
./drivers/input/serio/ct82c710.d \
./drivers/input/serio/gscps2.d \
./drivers/input/serio/hil_mlc.d \
./drivers/input/serio/hp_sdc.d \
./drivers/input/serio/hp_sdc_mlc.d \
./drivers/input/serio/i8042.d \
./drivers/input/serio/libps2.d \
./drivers/input/serio/maceps2.d \
./drivers/input/serio/parkbd.d \
./drivers/input/serio/pcips2.d \
./drivers/input/serio/ps2mult.d \
./drivers/input/serio/q40kbd.d \
./drivers/input/serio/rpckbd.d \
./drivers/input/serio/sa1111ps2.d \
./drivers/input/serio/serio.d \
./drivers/input/serio/serio_raw.d \
./drivers/input/serio/serport.d \
./drivers/input/serio/serport.mod.d \
./drivers/input/serio/xilinx_ps2.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/input/serio/%.o: ../drivers/input/serio/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/s390/char/con3215.c \
../drivers/s390/char/con3270.c \
../drivers/s390/char/ctrlchar.c \
../drivers/s390/char/defkeymap.c \
../drivers/s390/char/fs3270.c \
../drivers/s390/char/keyboard.c \
../drivers/s390/char/monreader.c \
../drivers/s390/char/monwriter.c \
../drivers/s390/char/raw3270.c \
../drivers/s390/char/sclp.c \
../drivers/s390/char/sclp_async.c \
../drivers/s390/char/sclp_cmd.c \
../drivers/s390/char/sclp_con.c \
../drivers/s390/char/sclp_config.c \
../drivers/s390/char/sclp_cpi.c \
../drivers/s390/char/sclp_cpi_sys.c \
../drivers/s390/char/sclp_ocf.c \
../drivers/s390/char/sclp_quiesce.c \
../drivers/s390/char/sclp_rw.c \
../drivers/s390/char/sclp_sdias.c \
../drivers/s390/char/sclp_tty.c \
../drivers/s390/char/sclp_vt220.c \
../drivers/s390/char/tape_34xx.c \
../drivers/s390/char/tape_3590.c \
../drivers/s390/char/tape_char.c \
../drivers/s390/char/tape_class.c \
../drivers/s390/char/tape_core.c \
../drivers/s390/char/tape_proc.c \
../drivers/s390/char/tape_std.c \
../drivers/s390/char/tty3270.c \
../drivers/s390/char/vmcp.c \
../drivers/s390/char/vmlogrdr.c \
../drivers/s390/char/vmur.c \
../drivers/s390/char/vmwatchdog.c \
../drivers/s390/char/zcore.c 

OBJS += \
./drivers/s390/char/con3215.o \
./drivers/s390/char/con3270.o \
./drivers/s390/char/ctrlchar.o \
./drivers/s390/char/defkeymap.o \
./drivers/s390/char/fs3270.o \
./drivers/s390/char/keyboard.o \
./drivers/s390/char/monreader.o \
./drivers/s390/char/monwriter.o \
./drivers/s390/char/raw3270.o \
./drivers/s390/char/sclp.o \
./drivers/s390/char/sclp_async.o \
./drivers/s390/char/sclp_cmd.o \
./drivers/s390/char/sclp_con.o \
./drivers/s390/char/sclp_config.o \
./drivers/s390/char/sclp_cpi.o \
./drivers/s390/char/sclp_cpi_sys.o \
./drivers/s390/char/sclp_ocf.o \
./drivers/s390/char/sclp_quiesce.o \
./drivers/s390/char/sclp_rw.o \
./drivers/s390/char/sclp_sdias.o \
./drivers/s390/char/sclp_tty.o \
./drivers/s390/char/sclp_vt220.o \
./drivers/s390/char/tape_34xx.o \
./drivers/s390/char/tape_3590.o \
./drivers/s390/char/tape_char.o \
./drivers/s390/char/tape_class.o \
./drivers/s390/char/tape_core.o \
./drivers/s390/char/tape_proc.o \
./drivers/s390/char/tape_std.o \
./drivers/s390/char/tty3270.o \
./drivers/s390/char/vmcp.o \
./drivers/s390/char/vmlogrdr.o \
./drivers/s390/char/vmur.o \
./drivers/s390/char/vmwatchdog.o \
./drivers/s390/char/zcore.o 

C_DEPS += \
./drivers/s390/char/con3215.d \
./drivers/s390/char/con3270.d \
./drivers/s390/char/ctrlchar.d \
./drivers/s390/char/defkeymap.d \
./drivers/s390/char/fs3270.d \
./drivers/s390/char/keyboard.d \
./drivers/s390/char/monreader.d \
./drivers/s390/char/monwriter.d \
./drivers/s390/char/raw3270.d \
./drivers/s390/char/sclp.d \
./drivers/s390/char/sclp_async.d \
./drivers/s390/char/sclp_cmd.d \
./drivers/s390/char/sclp_con.d \
./drivers/s390/char/sclp_config.d \
./drivers/s390/char/sclp_cpi.d \
./drivers/s390/char/sclp_cpi_sys.d \
./drivers/s390/char/sclp_ocf.d \
./drivers/s390/char/sclp_quiesce.d \
./drivers/s390/char/sclp_rw.d \
./drivers/s390/char/sclp_sdias.d \
./drivers/s390/char/sclp_tty.d \
./drivers/s390/char/sclp_vt220.d \
./drivers/s390/char/tape_34xx.d \
./drivers/s390/char/tape_3590.d \
./drivers/s390/char/tape_char.d \
./drivers/s390/char/tape_class.d \
./drivers/s390/char/tape_core.d \
./drivers/s390/char/tape_proc.d \
./drivers/s390/char/tape_std.d \
./drivers/s390/char/tty3270.d \
./drivers/s390/char/vmcp.d \
./drivers/s390/char/vmlogrdr.d \
./drivers/s390/char/vmur.d \
./drivers/s390/char/vmwatchdog.d \
./drivers/s390/char/zcore.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/s390/char/%.o: ../drivers/s390/char/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



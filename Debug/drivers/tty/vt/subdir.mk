################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/tty/vt/built-in.o \
../drivers/tty/vt/consolemap.o \
../drivers/tty/vt/consolemap_deftbl.o \
../drivers/tty/vt/defkeymap.o \
../drivers/tty/vt/keyboard.o \
../drivers/tty/vt/selection.o \
../drivers/tty/vt/vc_screen.o \
../drivers/tty/vt/vt.o \
../drivers/tty/vt/vt_ioctl.o 

C_SRCS += \
../drivers/tty/vt/consolemap.c \
../drivers/tty/vt/consolemap_deftbl.c \
../drivers/tty/vt/defkeymap.c \
../drivers/tty/vt/keyboard.c \
../drivers/tty/vt/selection.c \
../drivers/tty/vt/vc_screen.c \
../drivers/tty/vt/vt.c \
../drivers/tty/vt/vt_ioctl.c 

OBJS += \
./drivers/tty/vt/consolemap.o \
./drivers/tty/vt/consolemap_deftbl.o \
./drivers/tty/vt/defkeymap.o \
./drivers/tty/vt/keyboard.o \
./drivers/tty/vt/selection.o \
./drivers/tty/vt/vc_screen.o \
./drivers/tty/vt/vt.o \
./drivers/tty/vt/vt_ioctl.o 

C_DEPS += \
./drivers/tty/vt/consolemap.d \
./drivers/tty/vt/consolemap_deftbl.d \
./drivers/tty/vt/defkeymap.d \
./drivers/tty/vt/keyboard.d \
./drivers/tty/vt/selection.d \
./drivers/tty/vt/vc_screen.d \
./drivers/tty/vt/vt.d \
./drivers/tty/vt/vt_ioctl.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/tty/vt/%.o: ../drivers/tty/vt/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



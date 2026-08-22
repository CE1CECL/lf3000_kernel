################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/isdn/i4l/isdn_audio.c \
../drivers/isdn/i4l/isdn_bsdcomp.c \
../drivers/isdn/i4l/isdn_common.c \
../drivers/isdn/i4l/isdn_concap.c \
../drivers/isdn/i4l/isdn_net.c \
../drivers/isdn/i4l/isdn_ppp.c \
../drivers/isdn/i4l/isdn_tty.c \
../drivers/isdn/i4l/isdn_ttyfax.c \
../drivers/isdn/i4l/isdn_v110.c \
../drivers/isdn/i4l/isdn_x25iface.c \
../drivers/isdn/i4l/isdnhdlc.c 

OBJS += \
./drivers/isdn/i4l/isdn_audio.o \
./drivers/isdn/i4l/isdn_bsdcomp.o \
./drivers/isdn/i4l/isdn_common.o \
./drivers/isdn/i4l/isdn_concap.o \
./drivers/isdn/i4l/isdn_net.o \
./drivers/isdn/i4l/isdn_ppp.o \
./drivers/isdn/i4l/isdn_tty.o \
./drivers/isdn/i4l/isdn_ttyfax.o \
./drivers/isdn/i4l/isdn_v110.o \
./drivers/isdn/i4l/isdn_x25iface.o \
./drivers/isdn/i4l/isdnhdlc.o 

C_DEPS += \
./drivers/isdn/i4l/isdn_audio.d \
./drivers/isdn/i4l/isdn_bsdcomp.d \
./drivers/isdn/i4l/isdn_common.d \
./drivers/isdn/i4l/isdn_concap.d \
./drivers/isdn/i4l/isdn_net.d \
./drivers/isdn/i4l/isdn_ppp.d \
./drivers/isdn/i4l/isdn_tty.d \
./drivers/isdn/i4l/isdn_ttyfax.d \
./drivers/isdn/i4l/isdn_v110.d \
./drivers/isdn/i4l/isdn_x25iface.d \
./drivers/isdn/i4l/isdnhdlc.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/isdn/i4l/%.o: ../drivers/isdn/i4l/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



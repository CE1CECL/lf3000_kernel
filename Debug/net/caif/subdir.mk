################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/caif/caif_dev.c \
../net/caif/caif_socket.c \
../net/caif/caif_usb.c \
../net/caif/cfcnfg.c \
../net/caif/cfctrl.c \
../net/caif/cfdbgl.c \
../net/caif/cfdgml.c \
../net/caif/cffrml.c \
../net/caif/cfmuxl.c \
../net/caif/cfpkt_skbuff.c \
../net/caif/cfrfml.c \
../net/caif/cfserl.c \
../net/caif/cfsrvl.c \
../net/caif/cfutill.c \
../net/caif/cfveil.c \
../net/caif/cfvidl.c \
../net/caif/chnl_net.c 

OBJS += \
./net/caif/caif_dev.o \
./net/caif/caif_socket.o \
./net/caif/caif_usb.o \
./net/caif/cfcnfg.o \
./net/caif/cfctrl.o \
./net/caif/cfdbgl.o \
./net/caif/cfdgml.o \
./net/caif/cffrml.o \
./net/caif/cfmuxl.o \
./net/caif/cfpkt_skbuff.o \
./net/caif/cfrfml.o \
./net/caif/cfserl.o \
./net/caif/cfsrvl.o \
./net/caif/cfutill.o \
./net/caif/cfveil.o \
./net/caif/cfvidl.o \
./net/caif/chnl_net.o 

C_DEPS += \
./net/caif/caif_dev.d \
./net/caif/caif_socket.d \
./net/caif/caif_usb.d \
./net/caif/cfcnfg.d \
./net/caif/cfctrl.d \
./net/caif/cfdbgl.d \
./net/caif/cfdgml.d \
./net/caif/cffrml.d \
./net/caif/cfmuxl.d \
./net/caif/cfpkt_skbuff.d \
./net/caif/cfrfml.d \
./net/caif/cfserl.d \
./net/caif/cfsrvl.d \
./net/caif/cfutill.d \
./net/caif/cfveil.d \
./net/caif/cfvidl.d \
./net/caif/chnl_net.d 


# Each subdirectory must supply rules for building sources it contributes
net/caif/%.o: ../net/caif/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



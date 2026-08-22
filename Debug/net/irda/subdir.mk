################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/irda/af_irda.c \
../net/irda/discovery.c \
../net/irda/irda_device.c \
../net/irda/iriap.c \
../net/irda/iriap_event.c \
../net/irda/irias_object.c \
../net/irda/irlap.c \
../net/irda/irlap_event.c \
../net/irda/irlap_frame.c \
../net/irda/irlmp.c \
../net/irda/irlmp_event.c \
../net/irda/irlmp_frame.c \
../net/irda/irmod.c \
../net/irda/irnetlink.c \
../net/irda/irproc.c \
../net/irda/irqueue.c \
../net/irda/irsysctl.c \
../net/irda/irttp.c \
../net/irda/parameters.c \
../net/irda/qos.c \
../net/irda/timer.c \
../net/irda/wrapper.c 

OBJS += \
./net/irda/af_irda.o \
./net/irda/discovery.o \
./net/irda/irda_device.o \
./net/irda/iriap.o \
./net/irda/iriap_event.o \
./net/irda/irias_object.o \
./net/irda/irlap.o \
./net/irda/irlap_event.o \
./net/irda/irlap_frame.o \
./net/irda/irlmp.o \
./net/irda/irlmp_event.o \
./net/irda/irlmp_frame.o \
./net/irda/irmod.o \
./net/irda/irnetlink.o \
./net/irda/irproc.o \
./net/irda/irqueue.o \
./net/irda/irsysctl.o \
./net/irda/irttp.o \
./net/irda/parameters.o \
./net/irda/qos.o \
./net/irda/timer.o \
./net/irda/wrapper.o 

C_DEPS += \
./net/irda/af_irda.d \
./net/irda/discovery.d \
./net/irda/irda_device.d \
./net/irda/iriap.d \
./net/irda/iriap_event.d \
./net/irda/irias_object.d \
./net/irda/irlap.d \
./net/irda/irlap_event.d \
./net/irda/irlap_frame.d \
./net/irda/irlmp.d \
./net/irda/irlmp_event.d \
./net/irda/irlmp_frame.d \
./net/irda/irmod.d \
./net/irda/irnetlink.d \
./net/irda/irproc.d \
./net/irda/irqueue.d \
./net/irda/irsysctl.d \
./net/irda/irttp.d \
./net/irda/parameters.d \
./net/irda/qos.d \
./net/irda/timer.d \
./net/irda/wrapper.d 


# Each subdirectory must supply rules for building sources it contributes
net/irda/%.o: ../net/irda/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



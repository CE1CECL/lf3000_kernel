################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/ppp/bsd_comp.c \
../drivers/net/ppp/ppp_async.c \
../drivers/net/ppp/ppp_deflate.c \
../drivers/net/ppp/ppp_generic.c \
../drivers/net/ppp/ppp_mppe.c \
../drivers/net/ppp/ppp_synctty.c \
../drivers/net/ppp/pppoe.c \
../drivers/net/ppp/pppolac.c \
../drivers/net/ppp/pppopns.c \
../drivers/net/ppp/pppox.c \
../drivers/net/ppp/pptp.c 

OBJS += \
./drivers/net/ppp/bsd_comp.o \
./drivers/net/ppp/ppp_async.o \
./drivers/net/ppp/ppp_deflate.o \
./drivers/net/ppp/ppp_generic.o \
./drivers/net/ppp/ppp_mppe.o \
./drivers/net/ppp/ppp_synctty.o \
./drivers/net/ppp/pppoe.o \
./drivers/net/ppp/pppolac.o \
./drivers/net/ppp/pppopns.o \
./drivers/net/ppp/pppox.o \
./drivers/net/ppp/pptp.o 

C_DEPS += \
./drivers/net/ppp/bsd_comp.d \
./drivers/net/ppp/ppp_async.d \
./drivers/net/ppp/ppp_deflate.d \
./drivers/net/ppp/ppp_generic.d \
./drivers/net/ppp/ppp_mppe.d \
./drivers/net/ppp/ppp_synctty.d \
./drivers/net/ppp/pppoe.d \
./drivers/net/ppp/pppolac.d \
./drivers/net/ppp/pppopns.d \
./drivers/net/ppp/pppox.d \
./drivers/net/ppp/pptp.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/ppp/%.o: ../drivers/net/ppp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



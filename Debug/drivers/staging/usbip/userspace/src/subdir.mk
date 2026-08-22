################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/usbip/userspace/src/usbip.c \
../drivers/staging/usbip/userspace/src/usbip_attach.c \
../drivers/staging/usbip/userspace/src/usbip_bind.c \
../drivers/staging/usbip/userspace/src/usbip_detach.c \
../drivers/staging/usbip/userspace/src/usbip_list.c \
../drivers/staging/usbip/userspace/src/usbip_network.c \
../drivers/staging/usbip/userspace/src/usbip_unbind.c \
../drivers/staging/usbip/userspace/src/usbipd.c \
../drivers/staging/usbip/userspace/src/utils.c 

OBJS += \
./drivers/staging/usbip/userspace/src/usbip.o \
./drivers/staging/usbip/userspace/src/usbip_attach.o \
./drivers/staging/usbip/userspace/src/usbip_bind.o \
./drivers/staging/usbip/userspace/src/usbip_detach.o \
./drivers/staging/usbip/userspace/src/usbip_list.o \
./drivers/staging/usbip/userspace/src/usbip_network.o \
./drivers/staging/usbip/userspace/src/usbip_unbind.o \
./drivers/staging/usbip/userspace/src/usbipd.o \
./drivers/staging/usbip/userspace/src/utils.o 

C_DEPS += \
./drivers/staging/usbip/userspace/src/usbip.d \
./drivers/staging/usbip/userspace/src/usbip_attach.d \
./drivers/staging/usbip/userspace/src/usbip_bind.d \
./drivers/staging/usbip/userspace/src/usbip_detach.d \
./drivers/staging/usbip/userspace/src/usbip_list.d \
./drivers/staging/usbip/userspace/src/usbip_network.d \
./drivers/staging/usbip/userspace/src/usbip_unbind.d \
./drivers/staging/usbip/userspace/src/usbipd.d \
./drivers/staging/usbip/userspace/src/utils.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/usbip/userspace/src/%.o: ../drivers/staging/usbip/userspace/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



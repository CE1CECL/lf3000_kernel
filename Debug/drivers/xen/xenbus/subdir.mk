################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/xen/xenbus/xenbus_client.c \
../drivers/xen/xenbus/xenbus_comms.c \
../drivers/xen/xenbus/xenbus_dev_backend.c \
../drivers/xen/xenbus/xenbus_dev_frontend.c \
../drivers/xen/xenbus/xenbus_probe.c \
../drivers/xen/xenbus/xenbus_probe_backend.c \
../drivers/xen/xenbus/xenbus_probe_frontend.c \
../drivers/xen/xenbus/xenbus_xs.c 

OBJS += \
./drivers/xen/xenbus/xenbus_client.o \
./drivers/xen/xenbus/xenbus_comms.o \
./drivers/xen/xenbus/xenbus_dev_backend.o \
./drivers/xen/xenbus/xenbus_dev_frontend.o \
./drivers/xen/xenbus/xenbus_probe.o \
./drivers/xen/xenbus/xenbus_probe_backend.o \
./drivers/xen/xenbus/xenbus_probe_frontend.o \
./drivers/xen/xenbus/xenbus_xs.o 

C_DEPS += \
./drivers/xen/xenbus/xenbus_client.d \
./drivers/xen/xenbus/xenbus_comms.d \
./drivers/xen/xenbus/xenbus_dev_backend.d \
./drivers/xen/xenbus/xenbus_dev_frontend.d \
./drivers/xen/xenbus/xenbus_probe.d \
./drivers/xen/xenbus/xenbus_probe_backend.d \
./drivers/xen/xenbus/xenbus_probe_frontend.d \
./drivers/xen/xenbus/xenbus_xs.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/xen/xenbus/%.o: ../drivers/xen/xenbus/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/hv/channel.c \
../drivers/hv/channel_mgmt.c \
../drivers/hv/connection.c \
../drivers/hv/hv.c \
../drivers/hv/hv_kvp.c \
../drivers/hv/hv_util.c \
../drivers/hv/ring_buffer.c \
../drivers/hv/vmbus_drv.c 

OBJS += \
./drivers/hv/channel.o \
./drivers/hv/channel_mgmt.o \
./drivers/hv/connection.o \
./drivers/hv/hv.o \
./drivers/hv/hv_kvp.o \
./drivers/hv/hv_util.o \
./drivers/hv/ring_buffer.o \
./drivers/hv/vmbus_drv.o 

C_DEPS += \
./drivers/hv/channel.d \
./drivers/hv/channel_mgmt.d \
./drivers/hv/connection.d \
./drivers/hv/hv.d \
./drivers/hv/hv_kvp.d \
./drivers/hv/hv_util.d \
./drivers/hv/ring_buffer.d \
./drivers/hv/vmbus_drv.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/hv/%.o: ../drivers/hv/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



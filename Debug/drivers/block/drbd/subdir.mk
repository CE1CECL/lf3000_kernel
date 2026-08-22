################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/block/drbd/drbd_actlog.c \
../drivers/block/drbd/drbd_bitmap.c \
../drivers/block/drbd/drbd_main.c \
../drivers/block/drbd/drbd_nl.c \
../drivers/block/drbd/drbd_proc.c \
../drivers/block/drbd/drbd_receiver.c \
../drivers/block/drbd/drbd_req.c \
../drivers/block/drbd/drbd_strings.c \
../drivers/block/drbd/drbd_worker.c 

OBJS += \
./drivers/block/drbd/drbd_actlog.o \
./drivers/block/drbd/drbd_bitmap.o \
./drivers/block/drbd/drbd_main.o \
./drivers/block/drbd/drbd_nl.o \
./drivers/block/drbd/drbd_proc.o \
./drivers/block/drbd/drbd_receiver.o \
./drivers/block/drbd/drbd_req.o \
./drivers/block/drbd/drbd_strings.o \
./drivers/block/drbd/drbd_worker.o 

C_DEPS += \
./drivers/block/drbd/drbd_actlog.d \
./drivers/block/drbd/drbd_bitmap.d \
./drivers/block/drbd/drbd_main.d \
./drivers/block/drbd/drbd_nl.d \
./drivers/block/drbd/drbd_proc.d \
./drivers/block/drbd/drbd_receiver.d \
./drivers/block/drbd/drbd_req.d \
./drivers/block/drbd/drbd_strings.d \
./drivers/block/drbd/drbd_worker.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/block/drbd/%.o: ../drivers/block/drbd/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



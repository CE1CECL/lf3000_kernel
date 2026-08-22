################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/remoteproc/omap_remoteproc.c \
../drivers/remoteproc/remoteproc_core.c \
../drivers/remoteproc/remoteproc_debugfs.c \
../drivers/remoteproc/remoteproc_virtio.c 

OBJS += \
./drivers/remoteproc/omap_remoteproc.o \
./drivers/remoteproc/remoteproc_core.o \
./drivers/remoteproc/remoteproc_debugfs.o \
./drivers/remoteproc/remoteproc_virtio.o 

C_DEPS += \
./drivers/remoteproc/omap_remoteproc.d \
./drivers/remoteproc/remoteproc_core.d \
./drivers/remoteproc/remoteproc_debugfs.d \
./drivers/remoteproc/remoteproc_virtio.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/remoteproc/%.o: ../drivers/remoteproc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



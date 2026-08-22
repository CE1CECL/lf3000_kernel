################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/caif/caif_hsi.c \
../drivers/net/caif/caif_serial.c \
../drivers/net/caif/caif_shm_u5500.c \
../drivers/net/caif/caif_shmcore.c \
../drivers/net/caif/caif_spi.c \
../drivers/net/caif/caif_spi_slave.c 

OBJS += \
./drivers/net/caif/caif_hsi.o \
./drivers/net/caif/caif_serial.o \
./drivers/net/caif/caif_shm_u5500.o \
./drivers/net/caif/caif_shmcore.o \
./drivers/net/caif/caif_spi.o \
./drivers/net/caif/caif_spi_slave.o 

C_DEPS += \
./drivers/net/caif/caif_hsi.d \
./drivers/net/caif/caif_serial.d \
./drivers/net/caif/caif_shm_u5500.d \
./drivers/net/caif/caif_shmcore.d \
./drivers/net/caif/caif_spi.d \
./drivers/net/caif/caif_spi_slave.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/caif/%.o: ../drivers/net/caif/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



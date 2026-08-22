################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/ramster/cluster/heartbeat.c \
../drivers/staging/ramster/cluster/masklog.c \
../drivers/staging/ramster/cluster/nodemanager.c \
../drivers/staging/ramster/cluster/tcp.c 

OBJS += \
./drivers/staging/ramster/cluster/heartbeat.o \
./drivers/staging/ramster/cluster/masklog.o \
./drivers/staging/ramster/cluster/nodemanager.o \
./drivers/staging/ramster/cluster/tcp.o 

C_DEPS += \
./drivers/staging/ramster/cluster/heartbeat.d \
./drivers/staging/ramster/cluster/masklog.d \
./drivers/staging/ramster/cluster/nodemanager.d \
./drivers/staging/ramster/cluster/tcp.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/ramster/cluster/%.o: ../drivers/staging/ramster/cluster/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



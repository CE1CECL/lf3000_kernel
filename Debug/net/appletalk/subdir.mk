################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/appletalk/aarp.c \
../net/appletalk/atalk_proc.c \
../net/appletalk/ddp.c \
../net/appletalk/dev.c \
../net/appletalk/sysctl_net_atalk.c 

OBJS += \
./net/appletalk/aarp.o \
./net/appletalk/atalk_proc.o \
./net/appletalk/ddp.o \
./net/appletalk/dev.o \
./net/appletalk/sysctl_net_atalk.o 

C_DEPS += \
./net/appletalk/aarp.d \
./net/appletalk/atalk_proc.d \
./net/appletalk/ddp.d \
./net/appletalk/dev.d \
./net/appletalk/sysctl_net_atalk.d 


# Each subdirectory must supply rules for building sources it contributes
net/appletalk/%.o: ../net/appletalk/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



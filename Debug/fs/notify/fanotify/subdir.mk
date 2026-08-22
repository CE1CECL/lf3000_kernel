################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../fs/notify/fanotify/built-in.o 

C_SRCS += \
../fs/notify/fanotify/fanotify.c \
../fs/notify/fanotify/fanotify_user.c 

OBJS += \
./fs/notify/fanotify/fanotify.o \
./fs/notify/fanotify/fanotify_user.o 

C_DEPS += \
./fs/notify/fanotify/fanotify.d \
./fs/notify/fanotify/fanotify_user.d 


# Each subdirectory must supply rules for building sources it contributes
fs/notify/fanotify/%.o: ../fs/notify/fanotify/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



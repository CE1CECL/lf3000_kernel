################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../fs/notify/inotify/built-in.o \
../fs/notify/inotify/inotify_fsnotify.o \
../fs/notify/inotify/inotify_user.o 

C_SRCS += \
../fs/notify/inotify/inotify_fsnotify.c \
../fs/notify/inotify/inotify_user.c 

OBJS += \
./fs/notify/inotify/inotify_fsnotify.o \
./fs/notify/inotify/inotify_user.o 

C_DEPS += \
./fs/notify/inotify/inotify_fsnotify.d \
./fs/notify/inotify/inotify_user.d 


# Each subdirectory must supply rules for building sources it contributes
fs/notify/inotify/%.o: ../fs/notify/inotify/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



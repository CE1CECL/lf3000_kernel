################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/bfs/dir.c \
../fs/bfs/file.c \
../fs/bfs/inode.c 

OBJS += \
./fs/bfs/dir.o \
./fs/bfs/file.o \
./fs/bfs/inode.o 

C_DEPS += \
./fs/bfs/dir.d \
./fs/bfs/file.d \
./fs/bfs/inode.d 


# Each subdirectory must supply rules for building sources it contributes
fs/bfs/%.o: ../fs/bfs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/oprofile/buffer_sync.c \
../drivers/oprofile/cpu_buffer.c \
../drivers/oprofile/event_buffer.c \
../drivers/oprofile/nmi_timer_int.c \
../drivers/oprofile/oprof.c \
../drivers/oprofile/oprofile_files.c \
../drivers/oprofile/oprofile_perf.c \
../drivers/oprofile/oprofile_stats.c \
../drivers/oprofile/oprofilefs.c \
../drivers/oprofile/timer_int.c 

OBJS += \
./drivers/oprofile/buffer_sync.o \
./drivers/oprofile/cpu_buffer.o \
./drivers/oprofile/event_buffer.o \
./drivers/oprofile/nmi_timer_int.o \
./drivers/oprofile/oprof.o \
./drivers/oprofile/oprofile_files.o \
./drivers/oprofile/oprofile_perf.o \
./drivers/oprofile/oprofile_stats.o \
./drivers/oprofile/oprofilefs.o \
./drivers/oprofile/timer_int.o 

C_DEPS += \
./drivers/oprofile/buffer_sync.d \
./drivers/oprofile/cpu_buffer.d \
./drivers/oprofile/event_buffer.d \
./drivers/oprofile/nmi_timer_int.d \
./drivers/oprofile/oprof.d \
./drivers/oprofile/oprofile_files.d \
./drivers/oprofile/oprofile_perf.d \
./drivers/oprofile/oprofile_stats.d \
./drivers/oprofile/oprofilefs.d \
./drivers/oprofile/timer_int.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/oprofile/%.o: ../drivers/oprofile/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



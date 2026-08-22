################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/video/aty/aty128fb.c \
../drivers/video/aty/atyfb_base.c \
../drivers/video/aty/mach64_accel.c \
../drivers/video/aty/mach64_ct.c \
../drivers/video/aty/mach64_cursor.c \
../drivers/video/aty/mach64_gx.c \
../drivers/video/aty/radeon_accel.c \
../drivers/video/aty/radeon_backlight.c \
../drivers/video/aty/radeon_base.c \
../drivers/video/aty/radeon_i2c.c \
../drivers/video/aty/radeon_monitor.c \
../drivers/video/aty/radeon_pm.c 

OBJS += \
./drivers/video/aty/aty128fb.o \
./drivers/video/aty/atyfb_base.o \
./drivers/video/aty/mach64_accel.o \
./drivers/video/aty/mach64_ct.o \
./drivers/video/aty/mach64_cursor.o \
./drivers/video/aty/mach64_gx.o \
./drivers/video/aty/radeon_accel.o \
./drivers/video/aty/radeon_backlight.o \
./drivers/video/aty/radeon_base.o \
./drivers/video/aty/radeon_i2c.o \
./drivers/video/aty/radeon_monitor.o \
./drivers/video/aty/radeon_pm.o 

C_DEPS += \
./drivers/video/aty/aty128fb.d \
./drivers/video/aty/atyfb_base.d \
./drivers/video/aty/mach64_accel.d \
./drivers/video/aty/mach64_ct.d \
./drivers/video/aty/mach64_cursor.d \
./drivers/video/aty/mach64_gx.d \
./drivers/video/aty/radeon_accel.d \
./drivers/video/aty/radeon_backlight.d \
./drivers/video/aty/radeon_base.d \
./drivers/video/aty/radeon_i2c.d \
./drivers/video/aty/radeon_monitor.d \
./drivers/video/aty/radeon_pm.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/video/aty/%.o: ../drivers/video/aty/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



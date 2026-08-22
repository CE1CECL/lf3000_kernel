################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/sn9c102/sn9c102_core.c \
../drivers/media/video/sn9c102/sn9c102_hv7131d.c \
../drivers/media/video/sn9c102/sn9c102_hv7131r.c \
../drivers/media/video/sn9c102/sn9c102_mi0343.c \
../drivers/media/video/sn9c102/sn9c102_mi0360.c \
../drivers/media/video/sn9c102/sn9c102_mt9v111.c \
../drivers/media/video/sn9c102/sn9c102_ov7630.c \
../drivers/media/video/sn9c102/sn9c102_ov7660.c \
../drivers/media/video/sn9c102/sn9c102_pas106b.c \
../drivers/media/video/sn9c102/sn9c102_pas202bcb.c \
../drivers/media/video/sn9c102/sn9c102_tas5110c1b.c \
../drivers/media/video/sn9c102/sn9c102_tas5110d.c \
../drivers/media/video/sn9c102/sn9c102_tas5130d1b.c 

OBJS += \
./drivers/media/video/sn9c102/sn9c102_core.o \
./drivers/media/video/sn9c102/sn9c102_hv7131d.o \
./drivers/media/video/sn9c102/sn9c102_hv7131r.o \
./drivers/media/video/sn9c102/sn9c102_mi0343.o \
./drivers/media/video/sn9c102/sn9c102_mi0360.o \
./drivers/media/video/sn9c102/sn9c102_mt9v111.o \
./drivers/media/video/sn9c102/sn9c102_ov7630.o \
./drivers/media/video/sn9c102/sn9c102_ov7660.o \
./drivers/media/video/sn9c102/sn9c102_pas106b.o \
./drivers/media/video/sn9c102/sn9c102_pas202bcb.o \
./drivers/media/video/sn9c102/sn9c102_tas5110c1b.o \
./drivers/media/video/sn9c102/sn9c102_tas5110d.o \
./drivers/media/video/sn9c102/sn9c102_tas5130d1b.o 

C_DEPS += \
./drivers/media/video/sn9c102/sn9c102_core.d \
./drivers/media/video/sn9c102/sn9c102_hv7131d.d \
./drivers/media/video/sn9c102/sn9c102_hv7131r.d \
./drivers/media/video/sn9c102/sn9c102_mi0343.d \
./drivers/media/video/sn9c102/sn9c102_mi0360.d \
./drivers/media/video/sn9c102/sn9c102_mt9v111.d \
./drivers/media/video/sn9c102/sn9c102_ov7630.d \
./drivers/media/video/sn9c102/sn9c102_ov7660.d \
./drivers/media/video/sn9c102/sn9c102_pas106b.d \
./drivers/media/video/sn9c102/sn9c102_pas202bcb.d \
./drivers/media/video/sn9c102/sn9c102_tas5110c1b.d \
./drivers/media/video/sn9c102/sn9c102_tas5110d.d \
./drivers/media/video/sn9c102/sn9c102_tas5130d1b.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/sn9c102/%.o: ../drivers/media/video/sn9c102/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



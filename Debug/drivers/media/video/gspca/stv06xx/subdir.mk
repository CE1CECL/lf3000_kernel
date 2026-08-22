################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/gspca/stv06xx/stv06xx.c \
../drivers/media/video/gspca/stv06xx/stv06xx_hdcs.c \
../drivers/media/video/gspca/stv06xx/stv06xx_pb0100.c \
../drivers/media/video/gspca/stv06xx/stv06xx_st6422.c \
../drivers/media/video/gspca/stv06xx/stv06xx_vv6410.c 

OBJS += \
./drivers/media/video/gspca/stv06xx/stv06xx.o \
./drivers/media/video/gspca/stv06xx/stv06xx_hdcs.o \
./drivers/media/video/gspca/stv06xx/stv06xx_pb0100.o \
./drivers/media/video/gspca/stv06xx/stv06xx_st6422.o \
./drivers/media/video/gspca/stv06xx/stv06xx_vv6410.o 

C_DEPS += \
./drivers/media/video/gspca/stv06xx/stv06xx.d \
./drivers/media/video/gspca/stv06xx/stv06xx_hdcs.d \
./drivers/media/video/gspca/stv06xx/stv06xx_pb0100.d \
./drivers/media/video/gspca/stv06xx/stv06xx_st6422.d \
./drivers/media/video/gspca/stv06xx/stv06xx_vv6410.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/gspca/stv06xx/%.o: ../drivers/media/video/gspca/stv06xx/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



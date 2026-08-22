################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/video/console/built-in.o \
../drivers/video/console/dummycon.o 

C_SRCS += \
../drivers/video/console/bitblit.c \
../drivers/video/console/dummycon.c \
../drivers/video/console/fbcon.c \
../drivers/video/console/fbcon_ccw.c \
../drivers/video/console/fbcon_cw.c \
../drivers/video/console/fbcon_rotate.c \
../drivers/video/console/fbcon_ud.c \
../drivers/video/console/font_10x18.c \
../drivers/video/console/font_6x11.c \
../drivers/video/console/font_7x14.c \
../drivers/video/console/font_8x16.c \
../drivers/video/console/font_8x8.c \
../drivers/video/console/font_acorn_8x8.c \
../drivers/video/console/font_mini_4x6.c \
../drivers/video/console/font_pearl_8x8.c \
../drivers/video/console/font_sun12x22.c \
../drivers/video/console/font_sun8x16.c \
../drivers/video/console/fonts.c \
../drivers/video/console/mdacon.c \
../drivers/video/console/newport_con.c \
../drivers/video/console/softcursor.c \
../drivers/video/console/sticon.c \
../drivers/video/console/sticore.c \
../drivers/video/console/tileblit.c \
../drivers/video/console/vgacon.c 

OBJS += \
./drivers/video/console/bitblit.o \
./drivers/video/console/dummycon.o \
./drivers/video/console/fbcon.o \
./drivers/video/console/fbcon_ccw.o \
./drivers/video/console/fbcon_cw.o \
./drivers/video/console/fbcon_rotate.o \
./drivers/video/console/fbcon_ud.o \
./drivers/video/console/font_10x18.o \
./drivers/video/console/font_6x11.o \
./drivers/video/console/font_7x14.o \
./drivers/video/console/font_8x16.o \
./drivers/video/console/font_8x8.o \
./drivers/video/console/font_acorn_8x8.o \
./drivers/video/console/font_mini_4x6.o \
./drivers/video/console/font_pearl_8x8.o \
./drivers/video/console/font_sun12x22.o \
./drivers/video/console/font_sun8x16.o \
./drivers/video/console/fonts.o \
./drivers/video/console/mdacon.o \
./drivers/video/console/newport_con.o \
./drivers/video/console/softcursor.o \
./drivers/video/console/sticon.o \
./drivers/video/console/sticore.o \
./drivers/video/console/tileblit.o \
./drivers/video/console/vgacon.o 

C_DEPS += \
./drivers/video/console/bitblit.d \
./drivers/video/console/dummycon.d \
./drivers/video/console/fbcon.d \
./drivers/video/console/fbcon_ccw.d \
./drivers/video/console/fbcon_cw.d \
./drivers/video/console/fbcon_rotate.d \
./drivers/video/console/fbcon_ud.d \
./drivers/video/console/font_10x18.d \
./drivers/video/console/font_6x11.d \
./drivers/video/console/font_7x14.d \
./drivers/video/console/font_8x16.d \
./drivers/video/console/font_8x8.d \
./drivers/video/console/font_acorn_8x8.d \
./drivers/video/console/font_mini_4x6.d \
./drivers/video/console/font_pearl_8x8.d \
./drivers/video/console/font_sun12x22.d \
./drivers/video/console/font_sun8x16.d \
./drivers/video/console/fonts.d \
./drivers/video/console/mdacon.d \
./drivers/video/console/newport_con.d \
./drivers/video/console/softcursor.d \
./drivers/video/console/sticon.d \
./drivers/video/console/sticore.d \
./drivers/video/console/tileblit.d \
./drivers/video/console/vgacon.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/video/console/%.o: ../drivers/video/console/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



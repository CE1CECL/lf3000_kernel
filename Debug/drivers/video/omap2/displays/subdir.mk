################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/video/omap2/displays/built-in.o 

C_SRCS += \
../drivers/video/omap2/displays/panel-acx565akm.c \
../drivers/video/omap2/displays/panel-dvi.c \
../drivers/video/omap2/displays/panel-generic-dpi.c \
../drivers/video/omap2/displays/panel-lgphilips-lb035q02.c \
../drivers/video/omap2/displays/panel-n8x0.c \
../drivers/video/omap2/displays/panel-nec-nl8048hl11-01b.c \
../drivers/video/omap2/displays/panel-picodlp.c \
../drivers/video/omap2/displays/panel-sharp-ls037v7dw01.c \
../drivers/video/omap2/displays/panel-taal.c \
../drivers/video/omap2/displays/panel-tpo-td043mtea1.c 

OBJS += \
./drivers/video/omap2/displays/panel-acx565akm.o \
./drivers/video/omap2/displays/panel-dvi.o \
./drivers/video/omap2/displays/panel-generic-dpi.o \
./drivers/video/omap2/displays/panel-lgphilips-lb035q02.o \
./drivers/video/omap2/displays/panel-n8x0.o \
./drivers/video/omap2/displays/panel-nec-nl8048hl11-01b.o \
./drivers/video/omap2/displays/panel-picodlp.o \
./drivers/video/omap2/displays/panel-sharp-ls037v7dw01.o \
./drivers/video/omap2/displays/panel-taal.o \
./drivers/video/omap2/displays/panel-tpo-td043mtea1.o 

C_DEPS += \
./drivers/video/omap2/displays/panel-acx565akm.d \
./drivers/video/omap2/displays/panel-dvi.d \
./drivers/video/omap2/displays/panel-generic-dpi.d \
./drivers/video/omap2/displays/panel-lgphilips-lb035q02.d \
./drivers/video/omap2/displays/panel-n8x0.d \
./drivers/video/omap2/displays/panel-nec-nl8048hl11-01b.d \
./drivers/video/omap2/displays/panel-picodlp.d \
./drivers/video/omap2/displays/panel-sharp-ls037v7dw01.d \
./drivers/video/omap2/displays/panel-taal.d \
./drivers/video/omap2/displays/panel-tpo-td043mtea1.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/video/omap2/displays/%.o: ../drivers/video/omap2/displays/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



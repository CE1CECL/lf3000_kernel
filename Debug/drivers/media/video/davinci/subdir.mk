################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/media/video/davinci/built-in.o 

C_SRCS += \
../drivers/media/video/davinci/dm355_ccdc.c \
../drivers/media/video/davinci/dm644x_ccdc.c \
../drivers/media/video/davinci/isif.c \
../drivers/media/video/davinci/vpbe.c \
../drivers/media/video/davinci/vpbe_display.c \
../drivers/media/video/davinci/vpbe_osd.c \
../drivers/media/video/davinci/vpbe_venc.c \
../drivers/media/video/davinci/vpfe_capture.c \
../drivers/media/video/davinci/vpif.c \
../drivers/media/video/davinci/vpif_capture.c \
../drivers/media/video/davinci/vpif_display.c \
../drivers/media/video/davinci/vpss.c 

OBJS += \
./drivers/media/video/davinci/dm355_ccdc.o \
./drivers/media/video/davinci/dm644x_ccdc.o \
./drivers/media/video/davinci/isif.o \
./drivers/media/video/davinci/vpbe.o \
./drivers/media/video/davinci/vpbe_display.o \
./drivers/media/video/davinci/vpbe_osd.o \
./drivers/media/video/davinci/vpbe_venc.o \
./drivers/media/video/davinci/vpfe_capture.o \
./drivers/media/video/davinci/vpif.o \
./drivers/media/video/davinci/vpif_capture.o \
./drivers/media/video/davinci/vpif_display.o \
./drivers/media/video/davinci/vpss.o 

C_DEPS += \
./drivers/media/video/davinci/dm355_ccdc.d \
./drivers/media/video/davinci/dm644x_ccdc.d \
./drivers/media/video/davinci/isif.d \
./drivers/media/video/davinci/vpbe.d \
./drivers/media/video/davinci/vpbe_display.d \
./drivers/media/video/davinci/vpbe_osd.d \
./drivers/media/video/davinci/vpbe_venc.d \
./drivers/media/video/davinci/vpfe_capture.d \
./drivers/media/video/davinci/vpif.d \
./drivers/media/video/davinci/vpif_capture.d \
./drivers/media/video/davinci/vpif_display.d \
./drivers/media/video/davinci/vpss.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/davinci/%.o: ../drivers/media/video/davinci/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



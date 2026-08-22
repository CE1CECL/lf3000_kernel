################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/ozwpan/ozcdev.c \
../drivers/staging/ozwpan/ozeltbuf.c \
../drivers/staging/ozwpan/ozevent.c \
../drivers/staging/ozwpan/ozhcd.c \
../drivers/staging/ozwpan/ozmain.c \
../drivers/staging/ozwpan/ozpd.c \
../drivers/staging/ozwpan/ozproto.c \
../drivers/staging/ozwpan/oztrace.c \
../drivers/staging/ozwpan/ozurbparanoia.c \
../drivers/staging/ozwpan/ozusbsvc.c \
../drivers/staging/ozwpan/ozusbsvc1.c 

OBJS += \
./drivers/staging/ozwpan/ozcdev.o \
./drivers/staging/ozwpan/ozeltbuf.o \
./drivers/staging/ozwpan/ozevent.o \
./drivers/staging/ozwpan/ozhcd.o \
./drivers/staging/ozwpan/ozmain.o \
./drivers/staging/ozwpan/ozpd.o \
./drivers/staging/ozwpan/ozproto.o \
./drivers/staging/ozwpan/oztrace.o \
./drivers/staging/ozwpan/ozurbparanoia.o \
./drivers/staging/ozwpan/ozusbsvc.o \
./drivers/staging/ozwpan/ozusbsvc1.o 

C_DEPS += \
./drivers/staging/ozwpan/ozcdev.d \
./drivers/staging/ozwpan/ozeltbuf.d \
./drivers/staging/ozwpan/ozevent.d \
./drivers/staging/ozwpan/ozhcd.d \
./drivers/staging/ozwpan/ozmain.d \
./drivers/staging/ozwpan/ozpd.d \
./drivers/staging/ozwpan/ozproto.d \
./drivers/staging/ozwpan/oztrace.d \
./drivers/staging/ozwpan/ozurbparanoia.d \
./drivers/staging/ozwpan/ozusbsvc.d \
./drivers/staging/ozwpan/ozusbsvc1.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/ozwpan/%.o: ../drivers/staging/ozwpan/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



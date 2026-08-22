################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/rts5139/ms.c \
../drivers/staging/rts5139/ms_mg.c \
../drivers/staging/rts5139/rts51x.c \
../drivers/staging/rts5139/rts51x_card.c \
../drivers/staging/rts5139/rts51x_chip.c \
../drivers/staging/rts5139/rts51x_fop.c \
../drivers/staging/rts5139/rts51x_scsi.c \
../drivers/staging/rts5139/rts51x_transport.c \
../drivers/staging/rts5139/sd.c \
../drivers/staging/rts5139/sd_cprm.c \
../drivers/staging/rts5139/xd.c 

OBJS += \
./drivers/staging/rts5139/ms.o \
./drivers/staging/rts5139/ms_mg.o \
./drivers/staging/rts5139/rts51x.o \
./drivers/staging/rts5139/rts51x_card.o \
./drivers/staging/rts5139/rts51x_chip.o \
./drivers/staging/rts5139/rts51x_fop.o \
./drivers/staging/rts5139/rts51x_scsi.o \
./drivers/staging/rts5139/rts51x_transport.o \
./drivers/staging/rts5139/sd.o \
./drivers/staging/rts5139/sd_cprm.o \
./drivers/staging/rts5139/xd.o 

C_DEPS += \
./drivers/staging/rts5139/ms.d \
./drivers/staging/rts5139/ms_mg.d \
./drivers/staging/rts5139/rts51x.d \
./drivers/staging/rts5139/rts51x_card.d \
./drivers/staging/rts5139/rts51x_chip.d \
./drivers/staging/rts5139/rts51x_fop.d \
./drivers/staging/rts5139/rts51x_scsi.d \
./drivers/staging/rts5139/rts51x_transport.d \
./drivers/staging/rts5139/sd.d \
./drivers/staging/rts5139/sd_cprm.d \
./drivers/staging/rts5139/xd.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/rts5139/%.o: ../drivers/staging/rts5139/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sound/pci/ice1712/ak4xxx.c \
../sound/pci/ice1712/amp.c \
../sound/pci/ice1712/aureon.c \
../sound/pci/ice1712/delta.c \
../sound/pci/ice1712/ews.c \
../sound/pci/ice1712/hoontech.c \
../sound/pci/ice1712/ice1712.c \
../sound/pci/ice1712/ice1724.c \
../sound/pci/ice1712/juli.c \
../sound/pci/ice1712/maya44.c \
../sound/pci/ice1712/phase.c \
../sound/pci/ice1712/pontis.c \
../sound/pci/ice1712/prodigy192.c \
../sound/pci/ice1712/prodigy_hifi.c \
../sound/pci/ice1712/quartet.c \
../sound/pci/ice1712/revo.c \
../sound/pci/ice1712/se.c \
../sound/pci/ice1712/vt1720_mobo.c \
../sound/pci/ice1712/wtm.c 

OBJS += \
./sound/pci/ice1712/ak4xxx.o \
./sound/pci/ice1712/amp.o \
./sound/pci/ice1712/aureon.o \
./sound/pci/ice1712/delta.o \
./sound/pci/ice1712/ews.o \
./sound/pci/ice1712/hoontech.o \
./sound/pci/ice1712/ice1712.o \
./sound/pci/ice1712/ice1724.o \
./sound/pci/ice1712/juli.o \
./sound/pci/ice1712/maya44.o \
./sound/pci/ice1712/phase.o \
./sound/pci/ice1712/pontis.o \
./sound/pci/ice1712/prodigy192.o \
./sound/pci/ice1712/prodigy_hifi.o \
./sound/pci/ice1712/quartet.o \
./sound/pci/ice1712/revo.o \
./sound/pci/ice1712/se.o \
./sound/pci/ice1712/vt1720_mobo.o \
./sound/pci/ice1712/wtm.o 

C_DEPS += \
./sound/pci/ice1712/ak4xxx.d \
./sound/pci/ice1712/amp.d \
./sound/pci/ice1712/aureon.d \
./sound/pci/ice1712/delta.d \
./sound/pci/ice1712/ews.d \
./sound/pci/ice1712/hoontech.d \
./sound/pci/ice1712/ice1712.d \
./sound/pci/ice1712/ice1724.d \
./sound/pci/ice1712/juli.d \
./sound/pci/ice1712/maya44.d \
./sound/pci/ice1712/phase.d \
./sound/pci/ice1712/pontis.d \
./sound/pci/ice1712/prodigy192.d \
./sound/pci/ice1712/prodigy_hifi.d \
./sound/pci/ice1712/quartet.d \
./sound/pci/ice1712/revo.d \
./sound/pci/ice1712/se.d \
./sound/pci/ice1712/vt1720_mobo.d \
./sound/pci/ice1712/wtm.d 


# Each subdirectory must supply rules for building sources it contributes
sound/pci/ice1712/%.o: ../sound/pci/ice1712/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



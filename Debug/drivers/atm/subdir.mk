################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/atm/adummy.c \
../drivers/atm/ambassador.c \
../drivers/atm/atmtcp.c \
../drivers/atm/eni.c \
../drivers/atm/firestream.c \
../drivers/atm/fore200e.c \
../drivers/atm/he.c \
../drivers/atm/horizon.c \
../drivers/atm/idt77105.c \
../drivers/atm/idt77252.c \
../drivers/atm/iphase.c \
../drivers/atm/lanai.c \
../drivers/atm/nicstar.c \
../drivers/atm/nicstarmac.c \
../drivers/atm/solos-attrlist.c \
../drivers/atm/solos-pci.c \
../drivers/atm/suni.c \
../drivers/atm/uPD98402.c \
../drivers/atm/zatm.c 

OBJS += \
./drivers/atm/adummy.o \
./drivers/atm/ambassador.o \
./drivers/atm/atmtcp.o \
./drivers/atm/eni.o \
./drivers/atm/firestream.o \
./drivers/atm/fore200e.o \
./drivers/atm/he.o \
./drivers/atm/horizon.o \
./drivers/atm/idt77105.o \
./drivers/atm/idt77252.o \
./drivers/atm/iphase.o \
./drivers/atm/lanai.o \
./drivers/atm/nicstar.o \
./drivers/atm/nicstarmac.o \
./drivers/atm/solos-attrlist.o \
./drivers/atm/solos-pci.o \
./drivers/atm/suni.o \
./drivers/atm/uPD98402.o \
./drivers/atm/zatm.o 

C_DEPS += \
./drivers/atm/adummy.d \
./drivers/atm/ambassador.d \
./drivers/atm/atmtcp.d \
./drivers/atm/eni.d \
./drivers/atm/firestream.d \
./drivers/atm/fore200e.d \
./drivers/atm/he.d \
./drivers/atm/horizon.d \
./drivers/atm/idt77105.d \
./drivers/atm/idt77252.d \
./drivers/atm/iphase.d \
./drivers/atm/lanai.d \
./drivers/atm/nicstar.d \
./drivers/atm/nicstarmac.d \
./drivers/atm/solos-attrlist.d \
./drivers/atm/solos-pci.d \
./drivers/atm/suni.d \
./drivers/atm/uPD98402.d \
./drivers/atm/zatm.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/atm/%.o: ../drivers/atm/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



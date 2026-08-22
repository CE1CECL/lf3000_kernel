################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/tokenring/3c359.c \
../drivers/net/tokenring/abyss.c \
../drivers/net/tokenring/ibmtr.c \
../drivers/net/tokenring/ibmtr_cs.c \
../drivers/net/tokenring/lanstreamer.c \
../drivers/net/tokenring/madgemc.c \
../drivers/net/tokenring/olympic.c \
../drivers/net/tokenring/proteon.c \
../drivers/net/tokenring/skisa.c \
../drivers/net/tokenring/smctr.c \
../drivers/net/tokenring/tms380tr.c \
../drivers/net/tokenring/tmspci.c 

OBJS += \
./drivers/net/tokenring/3c359.o \
./drivers/net/tokenring/abyss.o \
./drivers/net/tokenring/ibmtr.o \
./drivers/net/tokenring/ibmtr_cs.o \
./drivers/net/tokenring/lanstreamer.o \
./drivers/net/tokenring/madgemc.o \
./drivers/net/tokenring/olympic.o \
./drivers/net/tokenring/proteon.o \
./drivers/net/tokenring/skisa.o \
./drivers/net/tokenring/smctr.o \
./drivers/net/tokenring/tms380tr.o \
./drivers/net/tokenring/tmspci.o 

C_DEPS += \
./drivers/net/tokenring/3c359.d \
./drivers/net/tokenring/abyss.d \
./drivers/net/tokenring/ibmtr.d \
./drivers/net/tokenring/ibmtr_cs.d \
./drivers/net/tokenring/lanstreamer.d \
./drivers/net/tokenring/madgemc.d \
./drivers/net/tokenring/olympic.d \
./drivers/net/tokenring/proteon.d \
./drivers/net/tokenring/skisa.d \
./drivers/net/tokenring/smctr.d \
./drivers/net/tokenring/tms380tr.d \
./drivers/net/tokenring/tmspci.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/tokenring/%.o: ../drivers/net/tokenring/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



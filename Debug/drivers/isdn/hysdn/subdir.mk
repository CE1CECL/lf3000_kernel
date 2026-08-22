################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/isdn/hysdn/boardergo.c \
../drivers/isdn/hysdn/hycapi.c \
../drivers/isdn/hysdn/hysdn_boot.c \
../drivers/isdn/hysdn/hysdn_init.c \
../drivers/isdn/hysdn/hysdn_net.c \
../drivers/isdn/hysdn/hysdn_procconf.c \
../drivers/isdn/hysdn/hysdn_proclog.c \
../drivers/isdn/hysdn/hysdn_sched.c 

OBJS += \
./drivers/isdn/hysdn/boardergo.o \
./drivers/isdn/hysdn/hycapi.o \
./drivers/isdn/hysdn/hysdn_boot.o \
./drivers/isdn/hysdn/hysdn_init.o \
./drivers/isdn/hysdn/hysdn_net.o \
./drivers/isdn/hysdn/hysdn_procconf.o \
./drivers/isdn/hysdn/hysdn_proclog.o \
./drivers/isdn/hysdn/hysdn_sched.o 

C_DEPS += \
./drivers/isdn/hysdn/boardergo.d \
./drivers/isdn/hysdn/hycapi.d \
./drivers/isdn/hysdn/hysdn_boot.d \
./drivers/isdn/hysdn/hysdn_init.d \
./drivers/isdn/hysdn/hysdn_net.d \
./drivers/isdn/hysdn/hysdn_procconf.d \
./drivers/isdn/hysdn/hysdn_proclog.d \
./drivers/isdn/hysdn/hysdn_sched.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/isdn/hysdn/%.o: ../drivers/isdn/hysdn/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



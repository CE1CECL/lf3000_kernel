################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/isdn/hardware/eicon/capidtmf.c \
../drivers/isdn/hardware/eicon/capifunc.c \
../drivers/isdn/hardware/eicon/capimain.c \
../drivers/isdn/hardware/eicon/dadapter.c \
../drivers/isdn/hardware/eicon/debug.c \
../drivers/isdn/hardware/eicon/debuglib.c \
../drivers/isdn/hardware/eicon/di.c \
../drivers/isdn/hardware/eicon/diddfunc.c \
../drivers/isdn/hardware/eicon/diva.c \
../drivers/isdn/hardware/eicon/diva_didd.c \
../drivers/isdn/hardware/eicon/diva_dma.c \
../drivers/isdn/hardware/eicon/divamnt.c \
../drivers/isdn/hardware/eicon/divasfunc.c \
../drivers/isdn/hardware/eicon/divasi.c \
../drivers/isdn/hardware/eicon/divasmain.c \
../drivers/isdn/hardware/eicon/divasproc.c \
../drivers/isdn/hardware/eicon/dqueue.c \
../drivers/isdn/hardware/eicon/idifunc.c \
../drivers/isdn/hardware/eicon/io.c \
../drivers/isdn/hardware/eicon/istream.c \
../drivers/isdn/hardware/eicon/maintidi.c \
../drivers/isdn/hardware/eicon/message.c \
../drivers/isdn/hardware/eicon/mntfunc.c \
../drivers/isdn/hardware/eicon/os_4bri.c \
../drivers/isdn/hardware/eicon/os_bri.c \
../drivers/isdn/hardware/eicon/os_pri.c \
../drivers/isdn/hardware/eicon/s_4bri.c \
../drivers/isdn/hardware/eicon/s_bri.c \
../drivers/isdn/hardware/eicon/s_pri.c \
../drivers/isdn/hardware/eicon/um_idi.c 

OBJS += \
./drivers/isdn/hardware/eicon/capidtmf.o \
./drivers/isdn/hardware/eicon/capifunc.o \
./drivers/isdn/hardware/eicon/capimain.o \
./drivers/isdn/hardware/eicon/dadapter.o \
./drivers/isdn/hardware/eicon/debug.o \
./drivers/isdn/hardware/eicon/debuglib.o \
./drivers/isdn/hardware/eicon/di.o \
./drivers/isdn/hardware/eicon/diddfunc.o \
./drivers/isdn/hardware/eicon/diva.o \
./drivers/isdn/hardware/eicon/diva_didd.o \
./drivers/isdn/hardware/eicon/diva_dma.o \
./drivers/isdn/hardware/eicon/divamnt.o \
./drivers/isdn/hardware/eicon/divasfunc.o \
./drivers/isdn/hardware/eicon/divasi.o \
./drivers/isdn/hardware/eicon/divasmain.o \
./drivers/isdn/hardware/eicon/divasproc.o \
./drivers/isdn/hardware/eicon/dqueue.o \
./drivers/isdn/hardware/eicon/idifunc.o \
./drivers/isdn/hardware/eicon/io.o \
./drivers/isdn/hardware/eicon/istream.o \
./drivers/isdn/hardware/eicon/maintidi.o \
./drivers/isdn/hardware/eicon/message.o \
./drivers/isdn/hardware/eicon/mntfunc.o \
./drivers/isdn/hardware/eicon/os_4bri.o \
./drivers/isdn/hardware/eicon/os_bri.o \
./drivers/isdn/hardware/eicon/os_pri.o \
./drivers/isdn/hardware/eicon/s_4bri.o \
./drivers/isdn/hardware/eicon/s_bri.o \
./drivers/isdn/hardware/eicon/s_pri.o \
./drivers/isdn/hardware/eicon/um_idi.o 

C_DEPS += \
./drivers/isdn/hardware/eicon/capidtmf.d \
./drivers/isdn/hardware/eicon/capifunc.d \
./drivers/isdn/hardware/eicon/capimain.d \
./drivers/isdn/hardware/eicon/dadapter.d \
./drivers/isdn/hardware/eicon/debug.d \
./drivers/isdn/hardware/eicon/debuglib.d \
./drivers/isdn/hardware/eicon/di.d \
./drivers/isdn/hardware/eicon/diddfunc.d \
./drivers/isdn/hardware/eicon/diva.d \
./drivers/isdn/hardware/eicon/diva_didd.d \
./drivers/isdn/hardware/eicon/diva_dma.d \
./drivers/isdn/hardware/eicon/divamnt.d \
./drivers/isdn/hardware/eicon/divasfunc.d \
./drivers/isdn/hardware/eicon/divasi.d \
./drivers/isdn/hardware/eicon/divasmain.d \
./drivers/isdn/hardware/eicon/divasproc.d \
./drivers/isdn/hardware/eicon/dqueue.d \
./drivers/isdn/hardware/eicon/idifunc.d \
./drivers/isdn/hardware/eicon/io.d \
./drivers/isdn/hardware/eicon/istream.d \
./drivers/isdn/hardware/eicon/maintidi.d \
./drivers/isdn/hardware/eicon/message.d \
./drivers/isdn/hardware/eicon/mntfunc.d \
./drivers/isdn/hardware/eicon/os_4bri.d \
./drivers/isdn/hardware/eicon/os_bri.d \
./drivers/isdn/hardware/eicon/os_pri.d \
./drivers/isdn/hardware/eicon/s_4bri.d \
./drivers/isdn/hardware/eicon/s_bri.d \
./drivers/isdn/hardware/eicon/s_pri.d \
./drivers/isdn/hardware/eicon/um_idi.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/isdn/hardware/eicon/%.o: ../drivers/isdn/hardware/eicon/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/hamradio/6pack.c \
../drivers/net/hamradio/baycom_epp.c \
../drivers/net/hamradio/baycom_par.c \
../drivers/net/hamradio/baycom_ser_fdx.c \
../drivers/net/hamradio/baycom_ser_hdx.c \
../drivers/net/hamradio/bpqether.c \
../drivers/net/hamradio/dmascc.c \
../drivers/net/hamradio/hdlcdrv.c \
../drivers/net/hamradio/mkiss.c \
../drivers/net/hamradio/scc.c \
../drivers/net/hamradio/yam.c 

OBJS += \
./drivers/net/hamradio/6pack.o \
./drivers/net/hamradio/baycom_epp.o \
./drivers/net/hamradio/baycom_par.o \
./drivers/net/hamradio/baycom_ser_fdx.o \
./drivers/net/hamradio/baycom_ser_hdx.o \
./drivers/net/hamradio/bpqether.o \
./drivers/net/hamradio/dmascc.o \
./drivers/net/hamradio/hdlcdrv.o \
./drivers/net/hamradio/mkiss.o \
./drivers/net/hamradio/scc.o \
./drivers/net/hamradio/yam.o 

C_DEPS += \
./drivers/net/hamradio/6pack.d \
./drivers/net/hamradio/baycom_epp.d \
./drivers/net/hamradio/baycom_par.d \
./drivers/net/hamradio/baycom_ser_fdx.d \
./drivers/net/hamradio/baycom_ser_hdx.d \
./drivers/net/hamradio/bpqether.d \
./drivers/net/hamradio/dmascc.d \
./drivers/net/hamradio/hdlcdrv.d \
./drivers/net/hamradio/mkiss.d \
./drivers/net/hamradio/scc.d \
./drivers/net/hamradio/yam.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/hamradio/%.o: ../drivers/net/hamradio/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



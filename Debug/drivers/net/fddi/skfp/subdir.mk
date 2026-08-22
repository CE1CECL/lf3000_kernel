################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/fddi/skfp/cfm.c \
../drivers/net/fddi/skfp/drvfbi.c \
../drivers/net/fddi/skfp/ecm.c \
../drivers/net/fddi/skfp/ess.c \
../drivers/net/fddi/skfp/fplustm.c \
../drivers/net/fddi/skfp/hwmtm.c \
../drivers/net/fddi/skfp/hwt.c \
../drivers/net/fddi/skfp/pcmplc.c \
../drivers/net/fddi/skfp/pmf.c \
../drivers/net/fddi/skfp/queue.c \
../drivers/net/fddi/skfp/rmt.c \
../drivers/net/fddi/skfp/skfddi.c \
../drivers/net/fddi/skfp/smt.c \
../drivers/net/fddi/skfp/smtdef.c \
../drivers/net/fddi/skfp/smtinit.c \
../drivers/net/fddi/skfp/smttimer.c \
../drivers/net/fddi/skfp/srf.c 

OBJS += \
./drivers/net/fddi/skfp/cfm.o \
./drivers/net/fddi/skfp/drvfbi.o \
./drivers/net/fddi/skfp/ecm.o \
./drivers/net/fddi/skfp/ess.o \
./drivers/net/fddi/skfp/fplustm.o \
./drivers/net/fddi/skfp/hwmtm.o \
./drivers/net/fddi/skfp/hwt.o \
./drivers/net/fddi/skfp/pcmplc.o \
./drivers/net/fddi/skfp/pmf.o \
./drivers/net/fddi/skfp/queue.o \
./drivers/net/fddi/skfp/rmt.o \
./drivers/net/fddi/skfp/skfddi.o \
./drivers/net/fddi/skfp/smt.o \
./drivers/net/fddi/skfp/smtdef.o \
./drivers/net/fddi/skfp/smtinit.o \
./drivers/net/fddi/skfp/smttimer.o \
./drivers/net/fddi/skfp/srf.o 

C_DEPS += \
./drivers/net/fddi/skfp/cfm.d \
./drivers/net/fddi/skfp/drvfbi.d \
./drivers/net/fddi/skfp/ecm.d \
./drivers/net/fddi/skfp/ess.d \
./drivers/net/fddi/skfp/fplustm.d \
./drivers/net/fddi/skfp/hwmtm.d \
./drivers/net/fddi/skfp/hwt.d \
./drivers/net/fddi/skfp/pcmplc.d \
./drivers/net/fddi/skfp/pmf.d \
./drivers/net/fddi/skfp/queue.d \
./drivers/net/fddi/skfp/rmt.d \
./drivers/net/fddi/skfp/skfddi.d \
./drivers/net/fddi/skfp/smt.d \
./drivers/net/fddi/skfp/smtdef.d \
./drivers/net/fddi/skfp/smtinit.d \
./drivers/net/fddi/skfp/smttimer.d \
./drivers/net/fddi/skfp/srf.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/fddi/skfp/%.o: ../drivers/net/fddi/skfp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



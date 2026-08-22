################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/tidspbridge/pmgr/chnl.c \
../drivers/staging/tidspbridge/pmgr/cmm.c \
../drivers/staging/tidspbridge/pmgr/cod.c \
../drivers/staging/tidspbridge/pmgr/dbll.c \
../drivers/staging/tidspbridge/pmgr/dev.c \
../drivers/staging/tidspbridge/pmgr/dmm.c \
../drivers/staging/tidspbridge/pmgr/dspapi.c \
../drivers/staging/tidspbridge/pmgr/io.c \
../drivers/staging/tidspbridge/pmgr/msg.c 

OBJS += \
./drivers/staging/tidspbridge/pmgr/chnl.o \
./drivers/staging/tidspbridge/pmgr/cmm.o \
./drivers/staging/tidspbridge/pmgr/cod.o \
./drivers/staging/tidspbridge/pmgr/dbll.o \
./drivers/staging/tidspbridge/pmgr/dev.o \
./drivers/staging/tidspbridge/pmgr/dmm.o \
./drivers/staging/tidspbridge/pmgr/dspapi.o \
./drivers/staging/tidspbridge/pmgr/io.o \
./drivers/staging/tidspbridge/pmgr/msg.o 

C_DEPS += \
./drivers/staging/tidspbridge/pmgr/chnl.d \
./drivers/staging/tidspbridge/pmgr/cmm.d \
./drivers/staging/tidspbridge/pmgr/cod.d \
./drivers/staging/tidspbridge/pmgr/dbll.d \
./drivers/staging/tidspbridge/pmgr/dev.d \
./drivers/staging/tidspbridge/pmgr/dmm.d \
./drivers/staging/tidspbridge/pmgr/dspapi.d \
./drivers/staging/tidspbridge/pmgr/io.d \
./drivers/staging/tidspbridge/pmgr/msg.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/tidspbridge/pmgr/%.o: ../drivers/staging/tidspbridge/pmgr/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/block/paride/aten.c \
../drivers/block/paride/bpck.c \
../drivers/block/paride/bpck6.c \
../drivers/block/paride/comm.c \
../drivers/block/paride/dstr.c \
../drivers/block/paride/epat.c \
../drivers/block/paride/epia.c \
../drivers/block/paride/fit2.c \
../drivers/block/paride/fit3.c \
../drivers/block/paride/friq.c \
../drivers/block/paride/frpw.c \
../drivers/block/paride/kbic.c \
../drivers/block/paride/ktti.c \
../drivers/block/paride/on20.c \
../drivers/block/paride/on26.c \
../drivers/block/paride/paride.c \
../drivers/block/paride/pcd.c \
../drivers/block/paride/pd.c \
../drivers/block/paride/pf.c \
../drivers/block/paride/pg.c \
../drivers/block/paride/ppc6lnx.c \
../drivers/block/paride/pt.c 

OBJS += \
./drivers/block/paride/aten.o \
./drivers/block/paride/bpck.o \
./drivers/block/paride/bpck6.o \
./drivers/block/paride/comm.o \
./drivers/block/paride/dstr.o \
./drivers/block/paride/epat.o \
./drivers/block/paride/epia.o \
./drivers/block/paride/fit2.o \
./drivers/block/paride/fit3.o \
./drivers/block/paride/friq.o \
./drivers/block/paride/frpw.o \
./drivers/block/paride/kbic.o \
./drivers/block/paride/ktti.o \
./drivers/block/paride/on20.o \
./drivers/block/paride/on26.o \
./drivers/block/paride/paride.o \
./drivers/block/paride/pcd.o \
./drivers/block/paride/pd.o \
./drivers/block/paride/pf.o \
./drivers/block/paride/pg.o \
./drivers/block/paride/ppc6lnx.o \
./drivers/block/paride/pt.o 

C_DEPS += \
./drivers/block/paride/aten.d \
./drivers/block/paride/bpck.d \
./drivers/block/paride/bpck6.d \
./drivers/block/paride/comm.d \
./drivers/block/paride/dstr.d \
./drivers/block/paride/epat.d \
./drivers/block/paride/epia.d \
./drivers/block/paride/fit2.d \
./drivers/block/paride/fit3.d \
./drivers/block/paride/friq.d \
./drivers/block/paride/frpw.d \
./drivers/block/paride/kbic.d \
./drivers/block/paride/ktti.d \
./drivers/block/paride/on20.d \
./drivers/block/paride/on26.d \
./drivers/block/paride/paride.d \
./drivers/block/paride/pcd.d \
./drivers/block/paride/pd.d \
./drivers/block/paride/pf.d \
./drivers/block/paride/pg.d \
./drivers/block/paride/ppc6lnx.d \
./drivers/block/paride/pt.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/block/paride/%.o: ../drivers/block/paride/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



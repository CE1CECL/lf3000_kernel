################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/s390/net/claw.c \
../drivers/s390/net/ctcm_dbug.c \
../drivers/s390/net/ctcm_fsms.c \
../drivers/s390/net/ctcm_main.c \
../drivers/s390/net/ctcm_mpc.c \
../drivers/s390/net/ctcm_sysfs.c \
../drivers/s390/net/fsm.c \
../drivers/s390/net/lcs.c \
../drivers/s390/net/netiucv.c \
../drivers/s390/net/qeth_core_main.c \
../drivers/s390/net/qeth_core_mpc.c \
../drivers/s390/net/qeth_core_sys.c \
../drivers/s390/net/qeth_l2_main.c \
../drivers/s390/net/qeth_l3_main.c \
../drivers/s390/net/qeth_l3_sys.c \
../drivers/s390/net/smsgiucv.c \
../drivers/s390/net/smsgiucv_app.c 

OBJS += \
./drivers/s390/net/claw.o \
./drivers/s390/net/ctcm_dbug.o \
./drivers/s390/net/ctcm_fsms.o \
./drivers/s390/net/ctcm_main.o \
./drivers/s390/net/ctcm_mpc.o \
./drivers/s390/net/ctcm_sysfs.o \
./drivers/s390/net/fsm.o \
./drivers/s390/net/lcs.o \
./drivers/s390/net/netiucv.o \
./drivers/s390/net/qeth_core_main.o \
./drivers/s390/net/qeth_core_mpc.o \
./drivers/s390/net/qeth_core_sys.o \
./drivers/s390/net/qeth_l2_main.o \
./drivers/s390/net/qeth_l3_main.o \
./drivers/s390/net/qeth_l3_sys.o \
./drivers/s390/net/smsgiucv.o \
./drivers/s390/net/smsgiucv_app.o 

C_DEPS += \
./drivers/s390/net/claw.d \
./drivers/s390/net/ctcm_dbug.d \
./drivers/s390/net/ctcm_fsms.d \
./drivers/s390/net/ctcm_main.d \
./drivers/s390/net/ctcm_mpc.d \
./drivers/s390/net/ctcm_sysfs.d \
./drivers/s390/net/fsm.d \
./drivers/s390/net/lcs.d \
./drivers/s390/net/netiucv.d \
./drivers/s390/net/qeth_core_main.d \
./drivers/s390/net/qeth_core_mpc.d \
./drivers/s390/net/qeth_core_sys.d \
./drivers/s390/net/qeth_l2_main.d \
./drivers/s390/net/qeth_l3_main.d \
./drivers/s390/net/qeth_l3_sys.d \
./drivers/s390/net/smsgiucv.d \
./drivers/s390/net/smsgiucv_app.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/s390/net/%.o: ../drivers/s390/net/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



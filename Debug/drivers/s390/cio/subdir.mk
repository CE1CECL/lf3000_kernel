################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/s390/cio/airq.c \
../drivers/s390/cio/blacklist.c \
../drivers/s390/cio/ccwgroup.c \
../drivers/s390/cio/ccwreq.c \
../drivers/s390/cio/chp.c \
../drivers/s390/cio/chsc.c \
../drivers/s390/cio/chsc_sch.c \
../drivers/s390/cio/cio.c \
../drivers/s390/cio/cmf.c \
../drivers/s390/cio/crw.c \
../drivers/s390/cio/css.c \
../drivers/s390/cio/device.c \
../drivers/s390/cio/device_fsm.c \
../drivers/s390/cio/device_id.c \
../drivers/s390/cio/device_ops.c \
../drivers/s390/cio/device_pgid.c \
../drivers/s390/cio/device_status.c \
../drivers/s390/cio/fcx.c \
../drivers/s390/cio/idset.c \
../drivers/s390/cio/isc.c \
../drivers/s390/cio/itcw.c \
../drivers/s390/cio/qdio_debug.c \
../drivers/s390/cio/qdio_main.c \
../drivers/s390/cio/qdio_setup.c \
../drivers/s390/cio/qdio_thinint.c 

OBJS += \
./drivers/s390/cio/airq.o \
./drivers/s390/cio/blacklist.o \
./drivers/s390/cio/ccwgroup.o \
./drivers/s390/cio/ccwreq.o \
./drivers/s390/cio/chp.o \
./drivers/s390/cio/chsc.o \
./drivers/s390/cio/chsc_sch.o \
./drivers/s390/cio/cio.o \
./drivers/s390/cio/cmf.o \
./drivers/s390/cio/crw.o \
./drivers/s390/cio/css.o \
./drivers/s390/cio/device.o \
./drivers/s390/cio/device_fsm.o \
./drivers/s390/cio/device_id.o \
./drivers/s390/cio/device_ops.o \
./drivers/s390/cio/device_pgid.o \
./drivers/s390/cio/device_status.o \
./drivers/s390/cio/fcx.o \
./drivers/s390/cio/idset.o \
./drivers/s390/cio/isc.o \
./drivers/s390/cio/itcw.o \
./drivers/s390/cio/qdio_debug.o \
./drivers/s390/cio/qdio_main.o \
./drivers/s390/cio/qdio_setup.o \
./drivers/s390/cio/qdio_thinint.o 

C_DEPS += \
./drivers/s390/cio/airq.d \
./drivers/s390/cio/blacklist.d \
./drivers/s390/cio/ccwgroup.d \
./drivers/s390/cio/ccwreq.d \
./drivers/s390/cio/chp.d \
./drivers/s390/cio/chsc.d \
./drivers/s390/cio/chsc_sch.d \
./drivers/s390/cio/cio.d \
./drivers/s390/cio/cmf.d \
./drivers/s390/cio/crw.d \
./drivers/s390/cio/css.d \
./drivers/s390/cio/device.d \
./drivers/s390/cio/device_fsm.d \
./drivers/s390/cio/device_id.d \
./drivers/s390/cio/device_ops.d \
./drivers/s390/cio/device_pgid.d \
./drivers/s390/cio/device_status.d \
./drivers/s390/cio/fcx.d \
./drivers/s390/cio/idset.d \
./drivers/s390/cio/isc.d \
./drivers/s390/cio/itcw.d \
./drivers/s390/cio/qdio_debug.d \
./drivers/s390/cio/qdio_main.d \
./drivers/s390/cio/qdio_setup.d \
./drivers/s390/cio/qdio_thinint.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/s390/cio/%.o: ../drivers/s390/cio/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



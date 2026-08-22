################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../block/blk-core.o \
../block/blk-exec.o \
../block/blk-flush.o \
../block/blk-ioc.o \
../block/blk-iopoll.o \
../block/blk-lib.o \
../block/blk-map.o \
../block/blk-merge.o \
../block/blk-settings.o \
../block/blk-softirq.o \
../block/blk-sysfs.o \
../block/blk-tag.o \
../block/blk-timeout.o \
../block/bsg-lib.o \
../block/bsg.o \
../block/built-in.o \
../block/cfq-iosched.o \
../block/deadline-iosched.o \
../block/elevator.o \
../block/genhd.o \
../block/ioctl.o \
../block/noop-iosched.o \
../block/partition-generic.o \
../block/scsi_ioctl.o 

C_SRCS += \
../block/blk-cgroup.c \
../block/blk-core.c \
../block/blk-exec.c \
../block/blk-flush.c \
../block/blk-integrity.c \
../block/blk-ioc.c \
../block/blk-iopoll.c \
../block/blk-lib.c \
../block/blk-map.c \
../block/blk-merge.c \
../block/blk-settings.c \
../block/blk-softirq.c \
../block/blk-sysfs.c \
../block/blk-tag.c \
../block/blk-throttle.c \
../block/blk-timeout.c \
../block/bsg-lib.c \
../block/bsg.c \
../block/cfq-iosched.c \
../block/compat_ioctl.c \
../block/deadline-iosched.c \
../block/elevator.c \
../block/genhd.c \
../block/ioctl.c \
../block/noop-iosched.c \
../block/partition-generic.c \
../block/scsi_ioctl.c 

OBJS += \
./block/blk-cgroup.o \
./block/blk-core.o \
./block/blk-exec.o \
./block/blk-flush.o \
./block/blk-integrity.o \
./block/blk-ioc.o \
./block/blk-iopoll.o \
./block/blk-lib.o \
./block/blk-map.o \
./block/blk-merge.o \
./block/blk-settings.o \
./block/blk-softirq.o \
./block/blk-sysfs.o \
./block/blk-tag.o \
./block/blk-throttle.o \
./block/blk-timeout.o \
./block/bsg-lib.o \
./block/bsg.o \
./block/cfq-iosched.o \
./block/compat_ioctl.o \
./block/deadline-iosched.o \
./block/elevator.o \
./block/genhd.o \
./block/ioctl.o \
./block/noop-iosched.o \
./block/partition-generic.o \
./block/scsi_ioctl.o 

C_DEPS += \
./block/blk-cgroup.d \
./block/blk-core.d \
./block/blk-exec.d \
./block/blk-flush.d \
./block/blk-integrity.d \
./block/blk-ioc.d \
./block/blk-iopoll.d \
./block/blk-lib.d \
./block/blk-map.d \
./block/blk-merge.d \
./block/blk-settings.d \
./block/blk-softirq.d \
./block/blk-sysfs.d \
./block/blk-tag.d \
./block/blk-throttle.d \
./block/blk-timeout.d \
./block/bsg-lib.d \
./block/bsg.d \
./block/cfq-iosched.d \
./block/compat_ioctl.d \
./block/deadline-iosched.d \
./block/elevator.d \
./block/genhd.d \
./block/ioctl.d \
./block/noop-iosched.d \
./block/partition-generic.d \
./block/scsi_ioctl.d 


# Each subdirectory must supply rules for building sources it contributes
block/%.o: ../block/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



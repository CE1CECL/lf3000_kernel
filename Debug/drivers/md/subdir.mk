################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/md/bitmap.c \
../drivers/md/dm-bufio.c \
../drivers/md/dm-crypt.c \
../drivers/md/dm-delay.c \
../drivers/md/dm-exception-store.c \
../drivers/md/dm-flakey.c \
../drivers/md/dm-io.c \
../drivers/md/dm-ioctl.c \
../drivers/md/dm-kcopyd.c \
../drivers/md/dm-linear.c \
../drivers/md/dm-log-userspace-base.c \
../drivers/md/dm-log-userspace-transfer.c \
../drivers/md/dm-log.c \
../drivers/md/dm-mpath.c \
../drivers/md/dm-path-selector.c \
../drivers/md/dm-queue-length.c \
../drivers/md/dm-raid.c \
../drivers/md/dm-raid1.c \
../drivers/md/dm-region-hash.c \
../drivers/md/dm-round-robin.c \
../drivers/md/dm-service-time.c \
../drivers/md/dm-snap-persistent.c \
../drivers/md/dm-snap-transient.c \
../drivers/md/dm-snap.c \
../drivers/md/dm-stripe.c \
../drivers/md/dm-sysfs.c \
../drivers/md/dm-table.c \
../drivers/md/dm-target.c \
../drivers/md/dm-thin-metadata.c \
../drivers/md/dm-thin.c \
../drivers/md/dm-uevent.c \
../drivers/md/dm-verity.c \
../drivers/md/dm-zero.c \
../drivers/md/dm.c \
../drivers/md/faulty.c \
../drivers/md/linear.c \
../drivers/md/md.c \
../drivers/md/multipath.c \
../drivers/md/raid0.c \
../drivers/md/raid1.c \
../drivers/md/raid10.c \
../drivers/md/raid5.c 

OBJS += \
./drivers/md/bitmap.o \
./drivers/md/dm-bufio.o \
./drivers/md/dm-crypt.o \
./drivers/md/dm-delay.o \
./drivers/md/dm-exception-store.o \
./drivers/md/dm-flakey.o \
./drivers/md/dm-io.o \
./drivers/md/dm-ioctl.o \
./drivers/md/dm-kcopyd.o \
./drivers/md/dm-linear.o \
./drivers/md/dm-log-userspace-base.o \
./drivers/md/dm-log-userspace-transfer.o \
./drivers/md/dm-log.o \
./drivers/md/dm-mpath.o \
./drivers/md/dm-path-selector.o \
./drivers/md/dm-queue-length.o \
./drivers/md/dm-raid.o \
./drivers/md/dm-raid1.o \
./drivers/md/dm-region-hash.o \
./drivers/md/dm-round-robin.o \
./drivers/md/dm-service-time.o \
./drivers/md/dm-snap-persistent.o \
./drivers/md/dm-snap-transient.o \
./drivers/md/dm-snap.o \
./drivers/md/dm-stripe.o \
./drivers/md/dm-sysfs.o \
./drivers/md/dm-table.o \
./drivers/md/dm-target.o \
./drivers/md/dm-thin-metadata.o \
./drivers/md/dm-thin.o \
./drivers/md/dm-uevent.o \
./drivers/md/dm-verity.o \
./drivers/md/dm-zero.o \
./drivers/md/dm.o \
./drivers/md/faulty.o \
./drivers/md/linear.o \
./drivers/md/md.o \
./drivers/md/multipath.o \
./drivers/md/raid0.o \
./drivers/md/raid1.o \
./drivers/md/raid10.o \
./drivers/md/raid5.o 

C_DEPS += \
./drivers/md/bitmap.d \
./drivers/md/dm-bufio.d \
./drivers/md/dm-crypt.d \
./drivers/md/dm-delay.d \
./drivers/md/dm-exception-store.d \
./drivers/md/dm-flakey.d \
./drivers/md/dm-io.d \
./drivers/md/dm-ioctl.d \
./drivers/md/dm-kcopyd.d \
./drivers/md/dm-linear.d \
./drivers/md/dm-log-userspace-base.d \
./drivers/md/dm-log-userspace-transfer.d \
./drivers/md/dm-log.d \
./drivers/md/dm-mpath.d \
./drivers/md/dm-path-selector.d \
./drivers/md/dm-queue-length.d \
./drivers/md/dm-raid.d \
./drivers/md/dm-raid1.d \
./drivers/md/dm-region-hash.d \
./drivers/md/dm-round-robin.d \
./drivers/md/dm-service-time.d \
./drivers/md/dm-snap-persistent.d \
./drivers/md/dm-snap-transient.d \
./drivers/md/dm-snap.d \
./drivers/md/dm-stripe.d \
./drivers/md/dm-sysfs.d \
./drivers/md/dm-table.d \
./drivers/md/dm-target.d \
./drivers/md/dm-thin-metadata.d \
./drivers/md/dm-thin.d \
./drivers/md/dm-uevent.d \
./drivers/md/dm-verity.d \
./drivers/md/dm-zero.d \
./drivers/md/dm.d \
./drivers/md/faulty.d \
./drivers/md/linear.d \
./drivers/md/md.d \
./drivers/md/multipath.d \
./drivers/md/raid0.d \
./drivers/md/raid1.d \
./drivers/md/raid10.d \
./drivers/md/raid5.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/md/%.o: ../drivers/md/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



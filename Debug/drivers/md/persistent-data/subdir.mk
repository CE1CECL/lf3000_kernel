################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/md/persistent-data/dm-block-manager.c \
../drivers/md/persistent-data/dm-btree-remove.c \
../drivers/md/persistent-data/dm-btree-spine.c \
../drivers/md/persistent-data/dm-btree.c \
../drivers/md/persistent-data/dm-space-map-checker.c \
../drivers/md/persistent-data/dm-space-map-common.c \
../drivers/md/persistent-data/dm-space-map-disk.c \
../drivers/md/persistent-data/dm-space-map-metadata.c \
../drivers/md/persistent-data/dm-transaction-manager.c 

OBJS += \
./drivers/md/persistent-data/dm-block-manager.o \
./drivers/md/persistent-data/dm-btree-remove.o \
./drivers/md/persistent-data/dm-btree-spine.o \
./drivers/md/persistent-data/dm-btree.o \
./drivers/md/persistent-data/dm-space-map-checker.o \
./drivers/md/persistent-data/dm-space-map-common.o \
./drivers/md/persistent-data/dm-space-map-disk.o \
./drivers/md/persistent-data/dm-space-map-metadata.o \
./drivers/md/persistent-data/dm-transaction-manager.o 

C_DEPS += \
./drivers/md/persistent-data/dm-block-manager.d \
./drivers/md/persistent-data/dm-btree-remove.d \
./drivers/md/persistent-data/dm-btree-spine.d \
./drivers/md/persistent-data/dm-btree.d \
./drivers/md/persistent-data/dm-space-map-checker.d \
./drivers/md/persistent-data/dm-space-map-common.d \
./drivers/md/persistent-data/dm-space-map-disk.d \
./drivers/md/persistent-data/dm-space-map-metadata.d \
./drivers/md/persistent-data/dm-transaction-manager.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/md/persistent-data/%.o: ../drivers/md/persistent-data/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



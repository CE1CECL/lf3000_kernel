################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/block/brd.o \
../drivers/block/built-in.o \
../drivers/block/loop.o 

C_SRCS += \
../drivers/block/DAC960.c \
../drivers/block/amiflop.c \
../drivers/block/ataflop.c \
../drivers/block/brd.c \
../drivers/block/cciss.c \
../drivers/block/cciss_scsi.c \
../drivers/block/cpqarray.c \
../drivers/block/cryptoloop.c \
../drivers/block/floppy.c \
../drivers/block/hd.c \
../drivers/block/loop.c \
../drivers/block/mg_disk.c \
../drivers/block/nbd.c \
../drivers/block/nvme.c \
../drivers/block/osdblk.c \
../drivers/block/pktcdvd.c \
../drivers/block/ps3disk.c \
../drivers/block/ps3vram.c \
../drivers/block/rbd.c \
../drivers/block/sunvdc.c \
../drivers/block/swim.c \
../drivers/block/swim3.c \
../drivers/block/sx8.c \
../drivers/block/ub.c \
../drivers/block/umem.c \
../drivers/block/virtio_blk.c \
../drivers/block/xd.c \
../drivers/block/xen-blkfront.c \
../drivers/block/xsysace.c \
../drivers/block/z2ram.c 

S_UPPER_SRCS += \
../drivers/block/swim_asm.S 

OBJS += \
./drivers/block/DAC960.o \
./drivers/block/amiflop.o \
./drivers/block/ataflop.o \
./drivers/block/brd.o \
./drivers/block/cciss.o \
./drivers/block/cciss_scsi.o \
./drivers/block/cpqarray.o \
./drivers/block/cryptoloop.o \
./drivers/block/floppy.o \
./drivers/block/hd.o \
./drivers/block/loop.o \
./drivers/block/mg_disk.o \
./drivers/block/nbd.o \
./drivers/block/nvme.o \
./drivers/block/osdblk.o \
./drivers/block/pktcdvd.o \
./drivers/block/ps3disk.o \
./drivers/block/ps3vram.o \
./drivers/block/rbd.o \
./drivers/block/sunvdc.o \
./drivers/block/swim.o \
./drivers/block/swim3.o \
./drivers/block/swim_asm.o \
./drivers/block/sx8.o \
./drivers/block/ub.o \
./drivers/block/umem.o \
./drivers/block/virtio_blk.o \
./drivers/block/xd.o \
./drivers/block/xen-blkfront.o \
./drivers/block/xsysace.o \
./drivers/block/z2ram.o 

C_DEPS += \
./drivers/block/DAC960.d \
./drivers/block/amiflop.d \
./drivers/block/ataflop.d \
./drivers/block/brd.d \
./drivers/block/cciss.d \
./drivers/block/cciss_scsi.d \
./drivers/block/cpqarray.d \
./drivers/block/cryptoloop.d \
./drivers/block/floppy.d \
./drivers/block/hd.d \
./drivers/block/loop.d \
./drivers/block/mg_disk.d \
./drivers/block/nbd.d \
./drivers/block/nvme.d \
./drivers/block/osdblk.d \
./drivers/block/pktcdvd.d \
./drivers/block/ps3disk.d \
./drivers/block/ps3vram.d \
./drivers/block/rbd.d \
./drivers/block/sunvdc.d \
./drivers/block/swim.d \
./drivers/block/swim3.d \
./drivers/block/sx8.d \
./drivers/block/ub.d \
./drivers/block/umem.d \
./drivers/block/virtio_blk.d \
./drivers/block/xd.d \
./drivers/block/xen-blkfront.d \
./drivers/block/xsysace.d \
./drivers/block/z2ram.d 

S_UPPER_DEPS += \
./drivers/block/swim_asm.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/block/%.o: ../drivers/block/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

drivers/block/%.o: ../drivers/block/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC Assembler'
	arm-elf-gcc -x assembler-with-cpp -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../fs/nfs/objlayout/objio_osd.c \
../fs/nfs/objlayout/objlayout.c \
../fs/nfs/objlayout/pnfs_osd_xdr_cli.c 

OBJS += \
./fs/nfs/objlayout/objio_osd.o \
./fs/nfs/objlayout/objlayout.o \
./fs/nfs/objlayout/pnfs_osd_xdr_cli.o 

C_DEPS += \
./fs/nfs/objlayout/objio_osd.d \
./fs/nfs/objlayout/objlayout.d \
./fs/nfs/objlayout/pnfs_osd_xdr_cli.d 


# Each subdirectory must supply rules for building sources it contributes
fs/nfs/objlayout/%.o: ../fs/nfs/objlayout/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



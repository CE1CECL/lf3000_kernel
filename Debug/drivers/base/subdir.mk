################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/base/attribute_container.o \
../drivers/base/built-in.o \
../drivers/base/bus.o \
../drivers/base/class.o \
../drivers/base/core.o \
../drivers/base/cpu.o \
../drivers/base/dd.o \
../drivers/base/devres.o \
../drivers/base/devtmpfs.o \
../drivers/base/dma-coherent.o \
../drivers/base/dma-mapping.o \
../drivers/base/driver.o \
../drivers/base/firmware.o \
../drivers/base/firmware_class.o \
../drivers/base/init.o \
../drivers/base/map.o \
../drivers/base/module.o \
../drivers/base/platform.o \
../drivers/base/syscore.o \
../drivers/base/topology.o \
../drivers/base/transport_class.o 

C_SRCS += \
../drivers/base/attribute_container.c \
../drivers/base/bus.c \
../drivers/base/class.c \
../drivers/base/core.c \
../drivers/base/cpu.c \
../drivers/base/dd.c \
../drivers/base/devres.c \
../drivers/base/devtmpfs.c \
../drivers/base/dma-buf.c \
../drivers/base/dma-coherent.c \
../drivers/base/dma-mapping.c \
../drivers/base/driver.c \
../drivers/base/firmware.c \
../drivers/base/firmware_class.c \
../drivers/base/hypervisor.c \
../drivers/base/init.c \
../drivers/base/isa.c \
../drivers/base/map.c \
../drivers/base/memory.c \
../drivers/base/module.c \
../drivers/base/node.c \
../drivers/base/platform.c \
../drivers/base/soc.c \
../drivers/base/sw_sync.c \
../drivers/base/sync.c \
../drivers/base/syscore.c \
../drivers/base/topology.c \
../drivers/base/transport_class.c 

OBJS += \
./drivers/base/attribute_container.o \
./drivers/base/bus.o \
./drivers/base/class.o \
./drivers/base/core.o \
./drivers/base/cpu.o \
./drivers/base/dd.o \
./drivers/base/devres.o \
./drivers/base/devtmpfs.o \
./drivers/base/dma-buf.o \
./drivers/base/dma-coherent.o \
./drivers/base/dma-mapping.o \
./drivers/base/driver.o \
./drivers/base/firmware.o \
./drivers/base/firmware_class.o \
./drivers/base/hypervisor.o \
./drivers/base/init.o \
./drivers/base/isa.o \
./drivers/base/map.o \
./drivers/base/memory.o \
./drivers/base/module.o \
./drivers/base/node.o \
./drivers/base/platform.o \
./drivers/base/soc.o \
./drivers/base/sw_sync.o \
./drivers/base/sync.o \
./drivers/base/syscore.o \
./drivers/base/topology.o \
./drivers/base/transport_class.o 

C_DEPS += \
./drivers/base/attribute_container.d \
./drivers/base/bus.d \
./drivers/base/class.d \
./drivers/base/core.d \
./drivers/base/cpu.d \
./drivers/base/dd.d \
./drivers/base/devres.d \
./drivers/base/devtmpfs.d \
./drivers/base/dma-buf.d \
./drivers/base/dma-coherent.d \
./drivers/base/dma-mapping.d \
./drivers/base/driver.d \
./drivers/base/firmware.d \
./drivers/base/firmware_class.d \
./drivers/base/hypervisor.d \
./drivers/base/init.d \
./drivers/base/isa.d \
./drivers/base/map.d \
./drivers/base/memory.d \
./drivers/base/module.d \
./drivers/base/node.d \
./drivers/base/platform.d \
./drivers/base/soc.d \
./drivers/base/sw_sync.d \
./drivers/base/sync.d \
./drivers/base/syscore.d \
./drivers/base/topology.d \
./drivers/base/transport_class.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/base/%.o: ../drivers/base/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



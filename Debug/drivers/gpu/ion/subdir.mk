################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/gpu/ion/built-in.o 

C_SRCS += \
../drivers/gpu/ion/ion.c \
../drivers/gpu/ion/ion_carveout_heap.c \
../drivers/gpu/ion/ion_heap.c \
../drivers/gpu/ion/ion_page_pool.c \
../drivers/gpu/ion/ion_system_heap.c \
../drivers/gpu/ion/ion_system_mapper.c 

OBJS += \
./drivers/gpu/ion/ion.o \
./drivers/gpu/ion/ion_carveout_heap.o \
./drivers/gpu/ion/ion_heap.o \
./drivers/gpu/ion/ion_page_pool.o \
./drivers/gpu/ion/ion_system_heap.o \
./drivers/gpu/ion/ion_system_mapper.o 

C_DEPS += \
./drivers/gpu/ion/ion.d \
./drivers/gpu/ion/ion_carveout_heap.d \
./drivers/gpu/ion/ion_heap.d \
./drivers/gpu/ion/ion_page_pool.d \
./drivers/gpu/ion/ion_system_heap.d \
./drivers/gpu/ion/ion_system_mapper.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/gpu/ion/%.o: ../drivers/gpu/ion/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



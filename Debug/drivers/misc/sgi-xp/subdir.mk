################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/misc/sgi-xp/xp_main.c \
../drivers/misc/sgi-xp/xp_sn2.c \
../drivers/misc/sgi-xp/xp_uv.c \
../drivers/misc/sgi-xp/xpc_channel.c \
../drivers/misc/sgi-xp/xpc_main.c \
../drivers/misc/sgi-xp/xpc_partition.c \
../drivers/misc/sgi-xp/xpc_sn2.c \
../drivers/misc/sgi-xp/xpc_uv.c \
../drivers/misc/sgi-xp/xpnet.c 

S_UPPER_SRCS += \
../drivers/misc/sgi-xp/xp_nofault.S 

OBJS += \
./drivers/misc/sgi-xp/xp_main.o \
./drivers/misc/sgi-xp/xp_nofault.o \
./drivers/misc/sgi-xp/xp_sn2.o \
./drivers/misc/sgi-xp/xp_uv.o \
./drivers/misc/sgi-xp/xpc_channel.o \
./drivers/misc/sgi-xp/xpc_main.o \
./drivers/misc/sgi-xp/xpc_partition.o \
./drivers/misc/sgi-xp/xpc_sn2.o \
./drivers/misc/sgi-xp/xpc_uv.o \
./drivers/misc/sgi-xp/xpnet.o 

C_DEPS += \
./drivers/misc/sgi-xp/xp_main.d \
./drivers/misc/sgi-xp/xp_sn2.d \
./drivers/misc/sgi-xp/xp_uv.d \
./drivers/misc/sgi-xp/xpc_channel.d \
./drivers/misc/sgi-xp/xpc_main.d \
./drivers/misc/sgi-xp/xpc_partition.d \
./drivers/misc/sgi-xp/xpc_sn2.d \
./drivers/misc/sgi-xp/xpc_uv.d \
./drivers/misc/sgi-xp/xpnet.d 

S_UPPER_DEPS += \
./drivers/misc/sgi-xp/xp_nofault.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/misc/sgi-xp/%.o: ../drivers/misc/sgi-xp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

drivers/misc/sgi-xp/%.o: ../drivers/misc/sgi-xp/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC Assembler'
	arm-elf-gcc -x assembler-with-cpp -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



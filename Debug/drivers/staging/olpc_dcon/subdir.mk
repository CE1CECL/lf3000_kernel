################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/olpc_dcon/olpc_dcon.c \
../drivers/staging/olpc_dcon/olpc_dcon_xo_1.c \
../drivers/staging/olpc_dcon/olpc_dcon_xo_1_5.c 

OBJS += \
./drivers/staging/olpc_dcon/olpc_dcon.o \
./drivers/staging/olpc_dcon/olpc_dcon_xo_1.o \
./drivers/staging/olpc_dcon/olpc_dcon_xo_1_5.o 

C_DEPS += \
./drivers/staging/olpc_dcon/olpc_dcon.d \
./drivers/staging/olpc_dcon/olpc_dcon_xo_1.d \
./drivers/staging/olpc_dcon/olpc_dcon_xo_1_5.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/olpc_dcon/%.o: ../drivers/staging/olpc_dcon/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



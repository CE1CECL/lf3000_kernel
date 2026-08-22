################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/target/tcm_fc/tfc_cmd.c \
../drivers/target/tcm_fc/tfc_conf.c \
../drivers/target/tcm_fc/tfc_io.c \
../drivers/target/tcm_fc/tfc_sess.c 

OBJS += \
./drivers/target/tcm_fc/tfc_cmd.o \
./drivers/target/tcm_fc/tfc_conf.o \
./drivers/target/tcm_fc/tfc_io.o \
./drivers/target/tcm_fc/tfc_sess.o 

C_DEPS += \
./drivers/target/tcm_fc/tfc_cmd.d \
./drivers/target/tcm_fc/tfc_conf.d \
./drivers/target/tcm_fc/tfc_io.d \
./drivers/target/tcm_fc/tfc_sess.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/target/tcm_fc/%.o: ../drivers/target/tcm_fc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



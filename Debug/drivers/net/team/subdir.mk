################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/team/team.c \
../drivers/net/team/team_mode_activebackup.c \
../drivers/net/team/team_mode_roundrobin.c 

OBJS += \
./drivers/net/team/team.o \
./drivers/net/team/team_mode_activebackup.o \
./drivers/net/team/team_mode_roundrobin.o 

C_DEPS += \
./drivers/net/team/team.d \
./drivers/net/team/team_mode_activebackup.d \
./drivers/net/team/team_mode_roundrobin.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/team/%.o: ../drivers/net/team/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/clk/built-in.o 

C_SRCS += \
../drivers/clk/clk-divider.c \
../drivers/clk/clk-fixed-rate.c \
../drivers/clk/clk-gate.c \
../drivers/clk/clk-mux.c \
../drivers/clk/clk.c \
../drivers/clk/clkdev.c 

OBJS += \
./drivers/clk/clk-divider.o \
./drivers/clk/clk-fixed-rate.o \
./drivers/clk/clk-gate.o \
./drivers/clk/clk-mux.o \
./drivers/clk/clk.o \
./drivers/clk/clkdev.o 

C_DEPS += \
./drivers/clk/clk-divider.d \
./drivers/clk/clk-fixed-rate.d \
./drivers/clk/clk-gate.d \
./drivers/clk/clk-mux.d \
./drivers/clk/clk.d \
./drivers/clk/clkdev.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/clk/%.o: ../drivers/clk/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



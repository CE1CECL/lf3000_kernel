################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/pinctrl/built-in.o 

C_SRCS += \
../drivers/pinctrl/core.c \
../drivers/pinctrl/pinconf-generic.c \
../drivers/pinctrl/pinconf.c \
../drivers/pinctrl/pinctrl-coh901.c \
../drivers/pinctrl/pinctrl-mmp2.c \
../drivers/pinctrl/pinctrl-pxa168.c \
../drivers/pinctrl/pinctrl-pxa3xx.c \
../drivers/pinctrl/pinctrl-pxa910.c \
../drivers/pinctrl/pinctrl-sirf.c \
../drivers/pinctrl/pinctrl-tegra.c \
../drivers/pinctrl/pinctrl-tegra20.c \
../drivers/pinctrl/pinctrl-tegra30.c \
../drivers/pinctrl/pinctrl-u300.c \
../drivers/pinctrl/pinmux.c 

OBJS += \
./drivers/pinctrl/core.o \
./drivers/pinctrl/pinconf-generic.o \
./drivers/pinctrl/pinconf.o \
./drivers/pinctrl/pinctrl-coh901.o \
./drivers/pinctrl/pinctrl-mmp2.o \
./drivers/pinctrl/pinctrl-pxa168.o \
./drivers/pinctrl/pinctrl-pxa3xx.o \
./drivers/pinctrl/pinctrl-pxa910.o \
./drivers/pinctrl/pinctrl-sirf.o \
./drivers/pinctrl/pinctrl-tegra.o \
./drivers/pinctrl/pinctrl-tegra20.o \
./drivers/pinctrl/pinctrl-tegra30.o \
./drivers/pinctrl/pinctrl-u300.o \
./drivers/pinctrl/pinmux.o 

C_DEPS += \
./drivers/pinctrl/core.d \
./drivers/pinctrl/pinconf-generic.d \
./drivers/pinctrl/pinconf.d \
./drivers/pinctrl/pinctrl-coh901.d \
./drivers/pinctrl/pinctrl-mmp2.d \
./drivers/pinctrl/pinctrl-pxa168.d \
./drivers/pinctrl/pinctrl-pxa3xx.d \
./drivers/pinctrl/pinctrl-pxa910.d \
./drivers/pinctrl/pinctrl-sirf.d \
./drivers/pinctrl/pinctrl-tegra.d \
./drivers/pinctrl/pinctrl-tegra20.d \
./drivers/pinctrl/pinctrl-tegra30.d \
./drivers/pinctrl/pinctrl-u300.d \
./drivers/pinctrl/pinmux.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/pinctrl/%.o: ../drivers/pinctrl/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



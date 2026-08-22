################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/wlags49_h2/ap_h2.c \
../drivers/staging/wlags49_h2/ap_h25.c \
../drivers/staging/wlags49_h2/dhf.c \
../drivers/staging/wlags49_h2/hcf.c \
../drivers/staging/wlags49_h2/mmd.c \
../drivers/staging/wlags49_h2/sta_h2.c \
../drivers/staging/wlags49_h2/sta_h25.c \
../drivers/staging/wlags49_h2/wl_cs.c \
../drivers/staging/wlags49_h2/wl_enc.c \
../drivers/staging/wlags49_h2/wl_main.c \
../drivers/staging/wlags49_h2/wl_netdev.c \
../drivers/staging/wlags49_h2/wl_pci.c \
../drivers/staging/wlags49_h2/wl_priv.c \
../drivers/staging/wlags49_h2/wl_profile.c \
../drivers/staging/wlags49_h2/wl_sysfs.c \
../drivers/staging/wlags49_h2/wl_util.c \
../drivers/staging/wlags49_h2/wl_wext.c 

OBJS += \
./drivers/staging/wlags49_h2/ap_h2.o \
./drivers/staging/wlags49_h2/ap_h25.o \
./drivers/staging/wlags49_h2/dhf.o \
./drivers/staging/wlags49_h2/hcf.o \
./drivers/staging/wlags49_h2/mmd.o \
./drivers/staging/wlags49_h2/sta_h2.o \
./drivers/staging/wlags49_h2/sta_h25.o \
./drivers/staging/wlags49_h2/wl_cs.o \
./drivers/staging/wlags49_h2/wl_enc.o \
./drivers/staging/wlags49_h2/wl_main.o \
./drivers/staging/wlags49_h2/wl_netdev.o \
./drivers/staging/wlags49_h2/wl_pci.o \
./drivers/staging/wlags49_h2/wl_priv.o \
./drivers/staging/wlags49_h2/wl_profile.o \
./drivers/staging/wlags49_h2/wl_sysfs.o \
./drivers/staging/wlags49_h2/wl_util.o \
./drivers/staging/wlags49_h2/wl_wext.o 

C_DEPS += \
./drivers/staging/wlags49_h2/ap_h2.d \
./drivers/staging/wlags49_h2/ap_h25.d \
./drivers/staging/wlags49_h2/dhf.d \
./drivers/staging/wlags49_h2/hcf.d \
./drivers/staging/wlags49_h2/mmd.d \
./drivers/staging/wlags49_h2/sta_h2.d \
./drivers/staging/wlags49_h2/sta_h25.d \
./drivers/staging/wlags49_h2/wl_cs.d \
./drivers/staging/wlags49_h2/wl_enc.d \
./drivers/staging/wlags49_h2/wl_main.d \
./drivers/staging/wlags49_h2/wl_netdev.d \
./drivers/staging/wlags49_h2/wl_pci.d \
./drivers/staging/wlags49_h2/wl_priv.d \
./drivers/staging/wlags49_h2/wl_profile.d \
./drivers/staging/wlags49_h2/wl_sysfs.d \
./drivers/staging/wlags49_h2/wl_util.d \
./drivers/staging/wlags49_h2/wl_wext.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/wlags49_h2/%.o: ../drivers/staging/wlags49_h2/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



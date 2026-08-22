################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/ieee802154/6lowpan.c \
../net/ieee802154/af_ieee802154.c \
../net/ieee802154/dgram.c \
../net/ieee802154/netlink.c \
../net/ieee802154/nl-mac.c \
../net/ieee802154/nl-phy.c \
../net/ieee802154/nl_policy.c \
../net/ieee802154/raw.c \
../net/ieee802154/wpan-class.c 

OBJS += \
./net/ieee802154/6lowpan.o \
./net/ieee802154/af_ieee802154.o \
./net/ieee802154/dgram.o \
./net/ieee802154/netlink.o \
./net/ieee802154/nl-mac.o \
./net/ieee802154/nl-phy.o \
./net/ieee802154/nl_policy.o \
./net/ieee802154/raw.o \
./net/ieee802154/wpan-class.o 

C_DEPS += \
./net/ieee802154/6lowpan.d \
./net/ieee802154/af_ieee802154.d \
./net/ieee802154/dgram.d \
./net/ieee802154/netlink.d \
./net/ieee802154/nl-mac.d \
./net/ieee802154/nl-phy.d \
./net/ieee802154/nl_policy.d \
./net/ieee802154/raw.d \
./net/ieee802154/wpan-class.d 


# Each subdirectory must supply rules for building sources it contributes
net/ieee802154/%.o: ../net/ieee802154/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



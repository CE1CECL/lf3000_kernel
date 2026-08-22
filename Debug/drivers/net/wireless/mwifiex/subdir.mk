################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/net/wireless/mwifiex/11n.c \
../drivers/net/wireless/mwifiex/11n_aggr.c \
../drivers/net/wireless/mwifiex/11n_rxreorder.c \
../drivers/net/wireless/mwifiex/cfg80211.c \
../drivers/net/wireless/mwifiex/cfp.c \
../drivers/net/wireless/mwifiex/cmdevt.c \
../drivers/net/wireless/mwifiex/debugfs.c \
../drivers/net/wireless/mwifiex/init.c \
../drivers/net/wireless/mwifiex/join.c \
../drivers/net/wireless/mwifiex/main.c \
../drivers/net/wireless/mwifiex/pcie.c \
../drivers/net/wireless/mwifiex/scan.c \
../drivers/net/wireless/mwifiex/sdio.c \
../drivers/net/wireless/mwifiex/sta_cmd.c \
../drivers/net/wireless/mwifiex/sta_cmdresp.c \
../drivers/net/wireless/mwifiex/sta_event.c \
../drivers/net/wireless/mwifiex/sta_ioctl.c \
../drivers/net/wireless/mwifiex/sta_rx.c \
../drivers/net/wireless/mwifiex/sta_tx.c \
../drivers/net/wireless/mwifiex/txrx.c \
../drivers/net/wireless/mwifiex/util.c \
../drivers/net/wireless/mwifiex/wmm.c 

OBJS += \
./drivers/net/wireless/mwifiex/11n.o \
./drivers/net/wireless/mwifiex/11n_aggr.o \
./drivers/net/wireless/mwifiex/11n_rxreorder.o \
./drivers/net/wireless/mwifiex/cfg80211.o \
./drivers/net/wireless/mwifiex/cfp.o \
./drivers/net/wireless/mwifiex/cmdevt.o \
./drivers/net/wireless/mwifiex/debugfs.o \
./drivers/net/wireless/mwifiex/init.o \
./drivers/net/wireless/mwifiex/join.o \
./drivers/net/wireless/mwifiex/main.o \
./drivers/net/wireless/mwifiex/pcie.o \
./drivers/net/wireless/mwifiex/scan.o \
./drivers/net/wireless/mwifiex/sdio.o \
./drivers/net/wireless/mwifiex/sta_cmd.o \
./drivers/net/wireless/mwifiex/sta_cmdresp.o \
./drivers/net/wireless/mwifiex/sta_event.o \
./drivers/net/wireless/mwifiex/sta_ioctl.o \
./drivers/net/wireless/mwifiex/sta_rx.o \
./drivers/net/wireless/mwifiex/sta_tx.o \
./drivers/net/wireless/mwifiex/txrx.o \
./drivers/net/wireless/mwifiex/util.o \
./drivers/net/wireless/mwifiex/wmm.o 

C_DEPS += \
./drivers/net/wireless/mwifiex/11n.d \
./drivers/net/wireless/mwifiex/11n_aggr.d \
./drivers/net/wireless/mwifiex/11n_rxreorder.d \
./drivers/net/wireless/mwifiex/cfg80211.d \
./drivers/net/wireless/mwifiex/cfp.d \
./drivers/net/wireless/mwifiex/cmdevt.d \
./drivers/net/wireless/mwifiex/debugfs.d \
./drivers/net/wireless/mwifiex/init.d \
./drivers/net/wireless/mwifiex/join.d \
./drivers/net/wireless/mwifiex/main.d \
./drivers/net/wireless/mwifiex/pcie.d \
./drivers/net/wireless/mwifiex/scan.d \
./drivers/net/wireless/mwifiex/sdio.d \
./drivers/net/wireless/mwifiex/sta_cmd.d \
./drivers/net/wireless/mwifiex/sta_cmdresp.d \
./drivers/net/wireless/mwifiex/sta_event.d \
./drivers/net/wireless/mwifiex/sta_ioctl.d \
./drivers/net/wireless/mwifiex/sta_rx.d \
./drivers/net/wireless/mwifiex/sta_tx.d \
./drivers/net/wireless/mwifiex/txrx.d \
./drivers/net/wireless/mwifiex/util.d \
./drivers/net/wireless/mwifiex/wmm.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/net/wireless/mwifiex/%.o: ../drivers/net/wireless/mwifiex/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



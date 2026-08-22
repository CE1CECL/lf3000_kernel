################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../drivers/video/logo/built-in.o \
../drivers/video/logo/logo.o 

C_SRCS += \
../drivers/video/logo/clut_vga16.c \
../drivers/video/logo/logo.c \
../drivers/video/logo/logo_blackfin_clut224.c \
../drivers/video/logo/logo_blackfin_vga16.c \
../drivers/video/logo/logo_dec_clut224.c \
../drivers/video/logo/logo_linux_clut224.c \
../drivers/video/logo/logo_linux_mono.c \
../drivers/video/logo/logo_linux_vga16.c \
../drivers/video/logo/logo_m32r_clut224.c \
../drivers/video/logo/logo_mac_clut224.c \
../drivers/video/logo/logo_parisc_clut224.c \
../drivers/video/logo/logo_sgi_clut224.c \
../drivers/video/logo/logo_spe_clut224.c \
../drivers/video/logo/logo_sun_clut224.c \
../drivers/video/logo/logo_superh_clut224.c \
../drivers/video/logo/logo_superh_mono.c \
../drivers/video/logo/logo_superh_vga16.c 

OBJS += \
./drivers/video/logo/clut_vga16.o \
./drivers/video/logo/logo.o \
./drivers/video/logo/logo_blackfin_clut224.o \
./drivers/video/logo/logo_blackfin_vga16.o \
./drivers/video/logo/logo_dec_clut224.o \
./drivers/video/logo/logo_linux_clut224.o \
./drivers/video/logo/logo_linux_mono.o \
./drivers/video/logo/logo_linux_vga16.o \
./drivers/video/logo/logo_m32r_clut224.o \
./drivers/video/logo/logo_mac_clut224.o \
./drivers/video/logo/logo_parisc_clut224.o \
./drivers/video/logo/logo_sgi_clut224.o \
./drivers/video/logo/logo_spe_clut224.o \
./drivers/video/logo/logo_sun_clut224.o \
./drivers/video/logo/logo_superh_clut224.o \
./drivers/video/logo/logo_superh_mono.o \
./drivers/video/logo/logo_superh_vga16.o 

C_DEPS += \
./drivers/video/logo/clut_vga16.d \
./drivers/video/logo/logo.d \
./drivers/video/logo/logo_blackfin_clut224.d \
./drivers/video/logo/logo_blackfin_vga16.d \
./drivers/video/logo/logo_dec_clut224.d \
./drivers/video/logo/logo_linux_clut224.d \
./drivers/video/logo/logo_linux_mono.d \
./drivers/video/logo/logo_linux_vga16.d \
./drivers/video/logo/logo_m32r_clut224.d \
./drivers/video/logo/logo_mac_clut224.d \
./drivers/video/logo/logo_parisc_clut224.d \
./drivers/video/logo/logo_sgi_clut224.d \
./drivers/video/logo/logo_spe_clut224.d \
./drivers/video/logo/logo_sun_clut224.d \
./drivers/video/logo/logo_superh_clut224.d \
./drivers/video/logo/logo_superh_mono.d \
./drivers/video/logo/logo_superh_vga16.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/video/logo/%.o: ../drivers/video/logo/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



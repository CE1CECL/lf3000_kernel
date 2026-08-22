################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../scripts/kconfig/conf.o \
../scripts/kconfig/zconf.tab.o 

C_SRCS += \
../scripts/kconfig/conf.c \
../scripts/kconfig/confdata.c \
../scripts/kconfig/expr.c \
../scripts/kconfig/gconf.c \
../scripts/kconfig/images.c \
../scripts/kconfig/kxgettext.c \
../scripts/kconfig/mconf.c \
../scripts/kconfig/menu.c \
../scripts/kconfig/nconf.c \
../scripts/kconfig/nconf.gui.c \
../scripts/kconfig/symbol.c \
../scripts/kconfig/util.c \
../scripts/kconfig/zconf.hash.c \
../scripts/kconfig/zconf.lex.c \
../scripts/kconfig/zconf.tab.c 

OBJS += \
./scripts/kconfig/conf.o \
./scripts/kconfig/confdata.o \
./scripts/kconfig/expr.o \
./scripts/kconfig/gconf.o \
./scripts/kconfig/images.o \
./scripts/kconfig/kxgettext.o \
./scripts/kconfig/mconf.o \
./scripts/kconfig/menu.o \
./scripts/kconfig/nconf.o \
./scripts/kconfig/nconf.gui.o \
./scripts/kconfig/symbol.o \
./scripts/kconfig/util.o \
./scripts/kconfig/zconf.hash.o \
./scripts/kconfig/zconf.lex.o \
./scripts/kconfig/zconf.tab.o 

C_DEPS += \
./scripts/kconfig/conf.d \
./scripts/kconfig/confdata.d \
./scripts/kconfig/expr.d \
./scripts/kconfig/gconf.d \
./scripts/kconfig/images.d \
./scripts/kconfig/kxgettext.d \
./scripts/kconfig/mconf.d \
./scripts/kconfig/menu.d \
./scripts/kconfig/nconf.d \
./scripts/kconfig/nconf.gui.d \
./scripts/kconfig/symbol.d \
./scripts/kconfig/util.d \
./scripts/kconfig/zconf.hash.d \
./scripts/kconfig/zconf.lex.d \
./scripts/kconfig/zconf.tab.d 


# Each subdirectory must supply rules for building sources it contributes
scripts/kconfig/%.o: ../scripts/kconfig/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



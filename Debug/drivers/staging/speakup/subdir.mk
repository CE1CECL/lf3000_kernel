################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/staging/speakup/buffers.c \
../drivers/staging/speakup/devsynth.c \
../drivers/staging/speakup/fakekey.c \
../drivers/staging/speakup/i18n.c \
../drivers/staging/speakup/keyhelp.c \
../drivers/staging/speakup/kobjects.c \
../drivers/staging/speakup/main.c \
../drivers/staging/speakup/selection.c \
../drivers/staging/speakup/serialio.c \
../drivers/staging/speakup/speakup_acntpc.c \
../drivers/staging/speakup/speakup_acntsa.c \
../drivers/staging/speakup/speakup_apollo.c \
../drivers/staging/speakup/speakup_audptr.c \
../drivers/staging/speakup/speakup_bns.c \
../drivers/staging/speakup/speakup_decext.c \
../drivers/staging/speakup/speakup_decpc.c \
../drivers/staging/speakup/speakup_dectlk.c \
../drivers/staging/speakup/speakup_dtlk.c \
../drivers/staging/speakup/speakup_dummy.c \
../drivers/staging/speakup/speakup_keypc.c \
../drivers/staging/speakup/speakup_ltlk.c \
../drivers/staging/speakup/speakup_soft.c \
../drivers/staging/speakup/speakup_spkout.c \
../drivers/staging/speakup/speakup_txprt.c \
../drivers/staging/speakup/synth.c \
../drivers/staging/speakup/thread.c \
../drivers/staging/speakup/varhandlers.c 

OBJS += \
./drivers/staging/speakup/buffers.o \
./drivers/staging/speakup/devsynth.o \
./drivers/staging/speakup/fakekey.o \
./drivers/staging/speakup/i18n.o \
./drivers/staging/speakup/keyhelp.o \
./drivers/staging/speakup/kobjects.o \
./drivers/staging/speakup/main.o \
./drivers/staging/speakup/selection.o \
./drivers/staging/speakup/serialio.o \
./drivers/staging/speakup/speakup_acntpc.o \
./drivers/staging/speakup/speakup_acntsa.o \
./drivers/staging/speakup/speakup_apollo.o \
./drivers/staging/speakup/speakup_audptr.o \
./drivers/staging/speakup/speakup_bns.o \
./drivers/staging/speakup/speakup_decext.o \
./drivers/staging/speakup/speakup_decpc.o \
./drivers/staging/speakup/speakup_dectlk.o \
./drivers/staging/speakup/speakup_dtlk.o \
./drivers/staging/speakup/speakup_dummy.o \
./drivers/staging/speakup/speakup_keypc.o \
./drivers/staging/speakup/speakup_ltlk.o \
./drivers/staging/speakup/speakup_soft.o \
./drivers/staging/speakup/speakup_spkout.o \
./drivers/staging/speakup/speakup_txprt.o \
./drivers/staging/speakup/synth.o \
./drivers/staging/speakup/thread.o \
./drivers/staging/speakup/varhandlers.o 

C_DEPS += \
./drivers/staging/speakup/buffers.d \
./drivers/staging/speakup/devsynth.d \
./drivers/staging/speakup/fakekey.d \
./drivers/staging/speakup/i18n.d \
./drivers/staging/speakup/keyhelp.d \
./drivers/staging/speakup/kobjects.d \
./drivers/staging/speakup/main.d \
./drivers/staging/speakup/selection.d \
./drivers/staging/speakup/serialio.d \
./drivers/staging/speakup/speakup_acntpc.d \
./drivers/staging/speakup/speakup_acntsa.d \
./drivers/staging/speakup/speakup_apollo.d \
./drivers/staging/speakup/speakup_audptr.d \
./drivers/staging/speakup/speakup_bns.d \
./drivers/staging/speakup/speakup_decext.d \
./drivers/staging/speakup/speakup_decpc.d \
./drivers/staging/speakup/speakup_dectlk.d \
./drivers/staging/speakup/speakup_dtlk.d \
./drivers/staging/speakup/speakup_dummy.d \
./drivers/staging/speakup/speakup_keypc.d \
./drivers/staging/speakup/speakup_ltlk.d \
./drivers/staging/speakup/speakup_soft.d \
./drivers/staging/speakup/speakup_spkout.d \
./drivers/staging/speakup/speakup_txprt.d \
./drivers/staging/speakup/synth.d \
./drivers/staging/speakup/thread.d \
./drivers/staging/speakup/varhandlers.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/staging/speakup/%.o: ../drivers/staging/speakup/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/media/video/s5p-mfc/s5p_mfc.c \
../drivers/media/video/s5p-mfc/s5p_mfc_cmd.c \
../drivers/media/video/s5p-mfc/s5p_mfc_ctrl.c \
../drivers/media/video/s5p-mfc/s5p_mfc_dec.c \
../drivers/media/video/s5p-mfc/s5p_mfc_enc.c \
../drivers/media/video/s5p-mfc/s5p_mfc_intr.c \
../drivers/media/video/s5p-mfc/s5p_mfc_opr.c \
../drivers/media/video/s5p-mfc/s5p_mfc_pm.c \
../drivers/media/video/s5p-mfc/s5p_mfc_shm.c 

OBJS += \
./drivers/media/video/s5p-mfc/s5p_mfc.o \
./drivers/media/video/s5p-mfc/s5p_mfc_cmd.o \
./drivers/media/video/s5p-mfc/s5p_mfc_ctrl.o \
./drivers/media/video/s5p-mfc/s5p_mfc_dec.o \
./drivers/media/video/s5p-mfc/s5p_mfc_enc.o \
./drivers/media/video/s5p-mfc/s5p_mfc_intr.o \
./drivers/media/video/s5p-mfc/s5p_mfc_opr.o \
./drivers/media/video/s5p-mfc/s5p_mfc_pm.o \
./drivers/media/video/s5p-mfc/s5p_mfc_shm.o 

C_DEPS += \
./drivers/media/video/s5p-mfc/s5p_mfc.d \
./drivers/media/video/s5p-mfc/s5p_mfc_cmd.d \
./drivers/media/video/s5p-mfc/s5p_mfc_ctrl.d \
./drivers/media/video/s5p-mfc/s5p_mfc_dec.d \
./drivers/media/video/s5p-mfc/s5p_mfc_enc.d \
./drivers/media/video/s5p-mfc/s5p_mfc_intr.d \
./drivers/media/video/s5p-mfc/s5p_mfc_opr.d \
./drivers/media/video/s5p-mfc/s5p_mfc_pm.d \
./drivers/media/video/s5p-mfc/s5p_mfc_shm.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/media/video/s5p-mfc/%.o: ../drivers/media/video/s5p-mfc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../net/llc/af_llc.c \
../net/llc/llc_c_ac.c \
../net/llc/llc_c_ev.c \
../net/llc/llc_c_st.c \
../net/llc/llc_conn.c \
../net/llc/llc_core.c \
../net/llc/llc_if.c \
../net/llc/llc_input.c \
../net/llc/llc_output.c \
../net/llc/llc_pdu.c \
../net/llc/llc_proc.c \
../net/llc/llc_s_ac.c \
../net/llc/llc_s_ev.c \
../net/llc/llc_s_st.c \
../net/llc/llc_sap.c \
../net/llc/llc_station.c \
../net/llc/sysctl_net_llc.c 

OBJS += \
./net/llc/af_llc.o \
./net/llc/llc_c_ac.o \
./net/llc/llc_c_ev.o \
./net/llc/llc_c_st.o \
./net/llc/llc_conn.o \
./net/llc/llc_core.o \
./net/llc/llc_if.o \
./net/llc/llc_input.o \
./net/llc/llc_output.o \
./net/llc/llc_pdu.o \
./net/llc/llc_proc.o \
./net/llc/llc_s_ac.o \
./net/llc/llc_s_ev.o \
./net/llc/llc_s_st.o \
./net/llc/llc_sap.o \
./net/llc/llc_station.o \
./net/llc/sysctl_net_llc.o 

C_DEPS += \
./net/llc/af_llc.d \
./net/llc/llc_c_ac.d \
./net/llc/llc_c_ev.d \
./net/llc/llc_c_st.d \
./net/llc/llc_conn.d \
./net/llc/llc_core.d \
./net/llc/llc_if.d \
./net/llc/llc_input.d \
./net/llc/llc_output.d \
./net/llc/llc_pdu.d \
./net/llc/llc_proc.d \
./net/llc/llc_s_ac.d \
./net/llc/llc_s_ev.d \
./net/llc/llc_s_st.d \
./net/llc/llc_sap.d \
./net/llc/llc_station.d \
./net/llc/sysctl_net_llc.d 


# Each subdirectory must supply rules for building sources it contributes
net/llc/%.o: ../net/llc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux GCC C Compiler'
	arm-elf-gcc -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-LPCUSBDK_18F14K50.mk)" "nbproject/Makefile-local-LPCUSBDK_18F14K50.mk"
include nbproject/Makefile-local-LPCUSBDK_18F14K50.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=LPCUSBDK_18F14K50
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/red4hid.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/red4hid.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../bsp/pic18f14k50/buttons.c ../bsp/pic18f14k50/leds.c ../bsp/pic18f14k50/usart.c ../bsp/pic18f14k50/adc.c ../demo_src/usb_descriptors.c ../demo_src/usb_events.c ../framework/usb/src/usb_device.c ../framework/usb/src/usb_device_hid.c ../demo_src/app_led_usb_status.c ../demo_src/main.c system.c ../demo_src/app_device_keyboard.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1408641809/buttons.p1 ${OBJECTDIR}/_ext/1408641809/leds.p1 ${OBJECTDIR}/_ext/1408641809/usart.p1 ${OBJECTDIR}/_ext/1408641809/adc.p1 ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1 ${OBJECTDIR}/_ext/300881143/usb_events.p1 ${OBJECTDIR}/_ext/2142726457/usb_device.p1 ${OBJECTDIR}/_ext/2142726457/usb_device_hid.p1 ${OBJECTDIR}/_ext/300881143/app_led_usb_status.p1 ${OBJECTDIR}/_ext/300881143/main.p1 ${OBJECTDIR}/system.p1 ${OBJECTDIR}/_ext/300881143/app_device_keyboard.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1408641809/buttons.p1.d ${OBJECTDIR}/_ext/1408641809/leds.p1.d ${OBJECTDIR}/_ext/1408641809/usart.p1.d ${OBJECTDIR}/_ext/1408641809/adc.p1.d ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1.d ${OBJECTDIR}/_ext/300881143/usb_events.p1.d ${OBJECTDIR}/_ext/2142726457/usb_device.p1.d ${OBJECTDIR}/_ext/2142726457/usb_device_hid.p1.d ${OBJECTDIR}/_ext/300881143/app_led_usb_status.p1.d ${OBJECTDIR}/_ext/300881143/main.p1.d ${OBJECTDIR}/system.p1.d ${OBJECTDIR}/_ext/300881143/app_device_keyboard.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1408641809/buttons.p1 ${OBJECTDIR}/_ext/1408641809/leds.p1 ${OBJECTDIR}/_ext/1408641809/usart.p1 ${OBJECTDIR}/_ext/1408641809/adc.p1 ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1 ${OBJECTDIR}/_ext/300881143/usb_events.p1 ${OBJECTDIR}/_ext/2142726457/usb_device.p1 ${OBJECTDIR}/_ext/2142726457/usb_device_hid.p1 ${OBJECTDIR}/_ext/300881143/app_led_usb_status.p1 ${OBJECTDIR}/_ext/300881143/main.p1 ${OBJECTDIR}/system.p1 ${OBJECTDIR}/_ext/300881143/app_device_keyboard.p1

# Source Files
SOURCEFILES=../bsp/pic18f14k50/buttons.c ../bsp/pic18f14k50/leds.c ../bsp/pic18f14k50/usart.c ../bsp/pic18f14k50/adc.c ../demo_src/usb_descriptors.c ../demo_src/usb_events.c ../framework/usb/src/usb_device.c ../framework/usb/src/usb_device_hid.c ../demo_src/app_led_usb_status.c ../demo_src/main.c system.c ../demo_src/app_device_keyboard.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-LPCUSBDK_18F14K50.mk ${DISTDIR}/red4hid.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F14K50
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1408641809/buttons.p1: ../bsp/pic18f14k50/buttons.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1408641809" 
	@${RM} ${OBJECTDIR}/_ext/1408641809/buttons.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1408641809/buttons.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../framework/usb/inc" -I"../bsp/pic18f14k50" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1408641809/buttons.p1 ../bsp/pic18f14k50/buttons.c 
	@-${MV} ${OBJECTDIR}/_ext/1408641809/buttons.d ${OBJECTDIR}/_ext/1408641809/buttons.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1408641809/buttons.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1408641809/leds.p1: ../bsp/pic18f14k50/leds.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1408641809" 
	@${RM} ${OBJECTDIR}/_ext/1408641809/leds.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1408641809/leds.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../framework/usb/inc" -I"../bsp/pic18f14k50" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1408641809/leds.p1 ../bsp/pic18f14k50/leds.c 
	@-${MV} ${OBJECTDIR}/_ext/1408641809/leds.d ${OBJECTDIR}/_ext/1408641809/leds.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1408641809/leds.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1408641809/usart.p1: ../bsp/pic18f14k50/usart.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1408641809" 
	@${RM} ${OBJECTDIR}/_ext/1408641809/usart.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1408641809/usart.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../framework/usb/inc" -I"../bsp/pic18f14k50" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1408641809/usart.p1 ../bsp/pic18f14k50/usart.c 
	@-${MV} ${OBJECTDIR}/_ext/1408641809/usart.d ${OBJECTDIR}/_ext/1408641809/usart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1408641809/usart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1408641809/adc.p1: ../bsp/pic18f14k50/adc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1408641809" 
	@${RM} ${OBJECTDIR}/_ext/1408641809/adc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1408641809/adc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../framework/usb/inc" -I"../bsp/pic18f14k50" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1408641809/adc.p1 ../bsp/pic18f14k50/adc.c 
	@-${MV} ${OBJECTDIR}/_ext/1408641809/adc.d ${OBJECTDIR}/_ext/1408641809/adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1408641809/adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/300881143/usb_descriptors.p1: ../demo_src/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../framework/usb/inc" -I"../bsp/pic18f14k50" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1 ../demo_src/usb_descriptors.c 
	@-${MV} ${OBJECTDIR}/_ext/300881143/usb_descriptors.d ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/300881143/usb_events.p1: ../demo_src/usb_events.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/usb_events.p1.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/usb_events.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../framework/usb/inc" -I"../bsp/pic18f14k50" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/300881143/usb_events.p1 ../demo_src/usb_events.c 
	@-${MV} ${OBJECTDIR}/_ext/300881143/usb_events.d ${OBJECTDIR}/_ext/300881143/usb_events.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/usb_events.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2142726457/usb_device.p1: ../framework/usb/src/usb_device.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2142726457" 
	@${RM} ${OBJECTDIR}/_ext/2142726457/usb_device.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2142726457/usb_device.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../framework/usb/inc" -I"../bsp/pic18f14k50" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2142726457/usb_device.p1 ../framework/usb/src/usb_device.c 
	@-${MV} ${OBJECTDIR}/_ext/2142726457/usb_device.d ${OBJECTDIR}/_ext/2142726457/usb_device.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2142726457/usb_device.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2142726457/usb_device_hid.p1: ../framework/usb/src/usb_device_hid.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2142726457" 
	@${RM} ${OBJECTDIR}/_ext/2142726457/usb_device_hid.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2142726457/usb_device_hid.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../framework/usb/inc" -I"../bsp/pic18f14k50" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2142726457/usb_device_hid.p1 ../framework/usb/src/usb_device_hid.c 
	@-${MV} ${OBJECTDIR}/_ext/2142726457/usb_device_hid.d ${OBJECTDIR}/_ext/2142726457/usb_device_hid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2142726457/usb_device_hid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/300881143/app_led_usb_status.p1: ../demo_src/app_led_usb_status.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/app_led_usb_status.p1.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/app_led_usb_status.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../framework/usb/inc" -I"../bsp/pic18f14k50" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/300881143/app_led_usb_status.p1 ../demo_src/app_led_usb_status.c 
	@-${MV} ${OBJECTDIR}/_ext/300881143/app_led_usb_status.d ${OBJECTDIR}/_ext/300881143/app_led_usb_status.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/app_led_usb_status.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/300881143/main.p1: ../demo_src/main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../framework/usb/inc" -I"../bsp/pic18f14k50" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/300881143/main.p1 ../demo_src/main.c 
	@-${MV} ${OBJECTDIR}/_ext/300881143/main.d ${OBJECTDIR}/_ext/300881143/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/system.p1: system.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/system.p1.d 
	@${RM} ${OBJECTDIR}/system.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../framework/usb/inc" -I"../bsp/pic18f14k50" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/system.p1 system.c 
	@-${MV} ${OBJECTDIR}/system.d ${OBJECTDIR}/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/300881143/app_device_keyboard.p1: ../demo_src/app_device_keyboard.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/app_device_keyboard.p1.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/app_device_keyboard.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../framework/usb/inc" -I"../bsp/pic18f14k50" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/300881143/app_device_keyboard.p1 ../demo_src/app_device_keyboard.c 
	@-${MV} ${OBJECTDIR}/_ext/300881143/app_device_keyboard.d ${OBJECTDIR}/_ext/300881143/app_device_keyboard.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/app_device_keyboard.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1408641809/buttons.p1: ../bsp/pic18f14k50/buttons.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1408641809" 
	@${RM} ${OBJECTDIR}/_ext/1408641809/buttons.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1408641809/buttons.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../framework/usb/inc" -I"../bsp/pic18f14k50" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1408641809/buttons.p1 ../bsp/pic18f14k50/buttons.c 
	@-${MV} ${OBJECTDIR}/_ext/1408641809/buttons.d ${OBJECTDIR}/_ext/1408641809/buttons.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1408641809/buttons.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1408641809/leds.p1: ../bsp/pic18f14k50/leds.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1408641809" 
	@${RM} ${OBJECTDIR}/_ext/1408641809/leds.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1408641809/leds.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../framework/usb/inc" -I"../bsp/pic18f14k50" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1408641809/leds.p1 ../bsp/pic18f14k50/leds.c 
	@-${MV} ${OBJECTDIR}/_ext/1408641809/leds.d ${OBJECTDIR}/_ext/1408641809/leds.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1408641809/leds.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1408641809/usart.p1: ../bsp/pic18f14k50/usart.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1408641809" 
	@${RM} ${OBJECTDIR}/_ext/1408641809/usart.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1408641809/usart.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../framework/usb/inc" -I"../bsp/pic18f14k50" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1408641809/usart.p1 ../bsp/pic18f14k50/usart.c 
	@-${MV} ${OBJECTDIR}/_ext/1408641809/usart.d ${OBJECTDIR}/_ext/1408641809/usart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1408641809/usart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1408641809/adc.p1: ../bsp/pic18f14k50/adc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1408641809" 
	@${RM} ${OBJECTDIR}/_ext/1408641809/adc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1408641809/adc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../framework/usb/inc" -I"../bsp/pic18f14k50" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1408641809/adc.p1 ../bsp/pic18f14k50/adc.c 
	@-${MV} ${OBJECTDIR}/_ext/1408641809/adc.d ${OBJECTDIR}/_ext/1408641809/adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1408641809/adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/300881143/usb_descriptors.p1: ../demo_src/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../framework/usb/inc" -I"../bsp/pic18f14k50" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1 ../demo_src/usb_descriptors.c 
	@-${MV} ${OBJECTDIR}/_ext/300881143/usb_descriptors.d ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/300881143/usb_events.p1: ../demo_src/usb_events.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/usb_events.p1.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/usb_events.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../framework/usb/inc" -I"../bsp/pic18f14k50" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/300881143/usb_events.p1 ../demo_src/usb_events.c 
	@-${MV} ${OBJECTDIR}/_ext/300881143/usb_events.d ${OBJECTDIR}/_ext/300881143/usb_events.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/usb_events.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2142726457/usb_device.p1: ../framework/usb/src/usb_device.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2142726457" 
	@${RM} ${OBJECTDIR}/_ext/2142726457/usb_device.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2142726457/usb_device.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../framework/usb/inc" -I"../bsp/pic18f14k50" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2142726457/usb_device.p1 ../framework/usb/src/usb_device.c 
	@-${MV} ${OBJECTDIR}/_ext/2142726457/usb_device.d ${OBJECTDIR}/_ext/2142726457/usb_device.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2142726457/usb_device.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2142726457/usb_device_hid.p1: ../framework/usb/src/usb_device_hid.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2142726457" 
	@${RM} ${OBJECTDIR}/_ext/2142726457/usb_device_hid.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2142726457/usb_device_hid.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../framework/usb/inc" -I"../bsp/pic18f14k50" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2142726457/usb_device_hid.p1 ../framework/usb/src/usb_device_hid.c 
	@-${MV} ${OBJECTDIR}/_ext/2142726457/usb_device_hid.d ${OBJECTDIR}/_ext/2142726457/usb_device_hid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2142726457/usb_device_hid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/300881143/app_led_usb_status.p1: ../demo_src/app_led_usb_status.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/app_led_usb_status.p1.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/app_led_usb_status.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../framework/usb/inc" -I"../bsp/pic18f14k50" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/300881143/app_led_usb_status.p1 ../demo_src/app_led_usb_status.c 
	@-${MV} ${OBJECTDIR}/_ext/300881143/app_led_usb_status.d ${OBJECTDIR}/_ext/300881143/app_led_usb_status.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/app_led_usb_status.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/300881143/main.p1: ../demo_src/main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../framework/usb/inc" -I"../bsp/pic18f14k50" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/300881143/main.p1 ../demo_src/main.c 
	@-${MV} ${OBJECTDIR}/_ext/300881143/main.d ${OBJECTDIR}/_ext/300881143/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/system.p1: system.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/system.p1.d 
	@${RM} ${OBJECTDIR}/system.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../framework/usb/inc" -I"../bsp/pic18f14k50" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/system.p1 system.c 
	@-${MV} ${OBJECTDIR}/system.d ${OBJECTDIR}/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/300881143/app_device_keyboard.p1: ../demo_src/app_device_keyboard.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/app_device_keyboard.p1.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/app_device_keyboard.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../framework/usb/inc" -I"../bsp/pic18f14k50" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/300881143/app_device_keyboard.p1 ../demo_src/app_device_keyboard.c 
	@-${MV} ${OBJECTDIR}/_ext/300881143/app_device_keyboard.d ${OBJECTDIR}/_ext/300881143/app_device_keyboard.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/app_device_keyboard.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/red4hid.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/red4hid.x.${IMAGE_TYPE}.map  -D__DEBUG=1  -mdebugger=pickit3  -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../framework/usb/inc" -I"../bsp/pic18f14k50" -I"." -mwarn=0 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -gdwarf-3 -mstack=compiled:auto:auto:auto     -mrom=default,-3e00-3fff   $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/red4hid.x.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} ${DISTDIR}/red4hid.x.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/red4hid.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/red4hid.x.${IMAGE_TYPE}.map  -DXPRJ_LPCUSBDK_18F14K50=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../framework/usb/inc" -I"../bsp/pic18f14k50" -I"." -mwarn=0 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -gdwarf-3 -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/red4hid.x.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif

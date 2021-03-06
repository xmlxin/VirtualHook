LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := va-native

LOCAL_CFLAGS := -Wno-error=format-security -fpermissive
LOCAL_CFLAGS += -fno-rtti -fno-exceptions

LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_C_INCLUDES += $(LOCAL_PATH)/Foundation
LOCAL_C_INCLUDES += $(LOCAL_PATH)/MSHook
LOCAL_C_INCLUDES += $(LOCAL_PATH)/GodinHook

ARCH_FILES := \
    MSHook/MSHook.cpp \
    MSHook/x86_64.cpp \
    MSHook/ARM.cpp \
    MSHook/Debug.cpp \
    MSHook/Hooker.cpp \
    MSHook/PosixMemory.cpp \
    MSHook/Thumb.cpp \
    MSHook/util.cpp \
    MSHook/x86.cpp


LOCAL_SRC_FILES := Core.cpp \
				   Foundation/IOUniformer.cpp \
				   Foundation/VMPatch.cpp \
				   $(ARCH_FILES) \


LOCAL_LDLIBS := -llog

include $(BUILD_SHARED_LIBRARY)

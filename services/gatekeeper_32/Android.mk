LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.gatekeeper@1.0-service_32
LOCAL_INIT_RC := android.hardware.gatekeeper@1.0-service_32.rc
LOCAL_PROPRIETARY_MODULE := true
LOCAL_32_BIT_ONLY := true
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := \
	../../../../../hardware/interfaces/gatekeeper/1.0/default/service.cpp
LOCAL_SHARED_LIBRARIES := \
	android.hardware.gatekeeper@1.0 \
	libhardware \
	libhidlbase \
	libhidltransport \
	libutils \
	liblog
include $(BUILD_EXECUTABLE) 
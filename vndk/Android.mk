#-------------------------------------------------------------------------------
# VNDK Libraries
#-------------------------------------------------------------------------------

VNDK_SP_LIBRARIES := \
    android.hardware.graphics.allocator@2.0 \
    android.hardware.graphics.mapper@2.0 \
    android.hardware.graphics.common@1.0 \
    android.hardware.renderscript@1.0 \
    android.hidl.base@1.0 \
    android.hidl.memory@1.0 \
    libRSCpuRef \
    libRSDriver \
    libRS_internal \
    libbacktrace \
    libbase \
    libbcinfo \
    libblas \
    libc++ \
    libcompiler_rt \
    libcutils \
    libft2 \
    libhardware \
    libhidlbase \
    libhidlmemory \
    libhidltransport \
    libhwbinder \
    libion \
    liblzma \
    libpng \
    libunwind \
    libutils \

#-------------------------------------------------------------------------------
# VNDK Extra vendor libraries
#-------------------------------------------------------------------------------

EXTRA_VENDOR_LIBRARIES := \
	android.hardware.audio.common@2.0-util \
	android.hardware.audio.common@2.0 \
	android.hardware.audio.effect@2.0 \
	android.hardware.audio@2.0 \
	android.hardware.biometrics.fingerprint@2.1 \
	android.hardware.bluetooth@1.0 \
	android.hardware.broadcastradio@1.0 \
	android.hardware.camera.common@1.0 \
	android.hardware.camera.device@1.0 \
	android.hardware.camera.device@3.2 \
	android.hardware.camera.device@3.3 \
	android.hardware.camera.provider@2.4 \
	android.hardware.cas.native@1.0 \
	android.hardware.cas@1.0 \
	android.hardware.configstore-utils \
	android.hardware.configstore@1.0 \
	android.hardware.drm@1.0 \
	android.hardware.gatekeeper@1.0 \
	android.hardware.gnss@1.0 \
	android.hardware.graphics.allocator@2.0 \
	android.hardware.graphics.bufferqueue@1.0 \
	android.hardware.graphics.common@1.0 \
	android.hardware.graphics.composer@2.1 \
	android.hardware.graphics.mapper@2.0 \
	android.hardware.keymaster@3.0 \
	android.hardware.light@2.0 \
	android.hardware.media.omx@1.0 \
	android.hardware.media@1.0 \
	android.hardware.memtrack@1.0 \
	android.hardware.power@1.0 \
	android.hardware.radio.deprecated@1.0 \
	android.hardware.radio@1.0 \
	android.hardware.radio@1.1 \
	android.hardware.sensors@1.0 \
	android.hardware.soundtrigger@2.0 \
	android.hardware.usb@1.0 \
	android.hardware.vibrator@1.0 \
	android.hardware.wifi.supplicant@1.0 \
	android.hardware.wifi@1.0 \
	android.hardware.wifi@1.1 \
	android.hidl.allocator@1.0 \
	android.hidl.memory@1.0 \
	android.hidl.token@1.0-utils \
	android.hidl.token@1.0 \
	android.system.wifi.keystore@1.0 \
	vendor.qti.hardware.fm@1.0

EXTRA_VENDOR_LIBRARIES += \
	libETC1 \
	libRScpp \
	libandroid \
	libandroid_runtime \
	libandroidfw \
	libappfuse \
	libaudioclient \
	libaudiomanager \
	libaudioroute \
	libaudioutils \
	libbacktrace \
	libbase \
	libbinder \
	libc++ \
	libcamera_client \
	libcamera_metadata \
	libcameraservice \
	libcap \
	libchrome \
	libcrypto \
	libcutils \
	libdebuggerd_client \
	libdng_sdk \
	libdisplayconfig \
	libdrmframework \
	libeffectsconfig \
	libevent \
	libexpat \
	libfmq \
	libft2 \
	libgps.utils \
	libgraphicsenv \
	libgui \
	libhardware \
	libhardware_legacy \
	libharfbuzz_ng \
	libheif \
	libhidlbase \
	libhidlmemory \
	libhidltransport \
	libhwbinder \
	libhwui \
	libicui18n \
	libicuuc \
	libimg_utils \
	libinput \
	libjnigraphics \
	libjpeg \
	libkeymaster_messages \
	libkeymaster_portable \
	libkeymaster_staging \
	libkeystore_binder \
	libloc_core \
	libloc_eng \
	libloc_pla \
	libloc_stub \
	liblzma \
	libmedia \
	libmedia_helper \
	libmedia_omx \
	libmediadrm \
	libmediametrics \
	libmediaplayerservice \
	libmediautils \
	libmemtrack \
	libmemunreachable \
	libminikin \
	libnativebridge \
	libnativehelper \
	libnativeloader \
	libnetd_client \
	libnetutils \
	libnl \
	libpackagelistparser \
	libpcre2 \
	libpdfium \
	libpiex \
	libpng \
	libpowermanager \
	libprocessgroup \
	libprotobuf-cpp-full \
	libprotobuf-cpp-lite \
	libradio_metadata \
	libselinux \
	libsensor \
	libskia \
	libsoftkeymaster \
	libsoftkeymasterdevice \
	libsonivox \
	libsoundtrigger \
	libspeexresampler \
	libsqlite \
	libssl \
	libstagefright \
	libstagefright_flacdec \
	libstagefright_foundation \
	libstagefright_httplive \
	libstagefright_omx \
	libstagefright_omx_utils \
	libstagefright_wfd \
	libstagefright_xmlparser \
	libsysutils \
	libtinyalsa \
	libtinyxml2 \
	libui \
	libunwind \
	libusbhost \
	libutils \
	libvintf \
	libvorbisidec \
	libvulkan \
	libwifi-system-iface \
	libxml2 \
	libziparchive

#-------------------------------------------------------------------------------
# VNDK Modules
#-------------------------------------------------------------------------------
LOCAL_PATH := $(call my-dir)

define define-vndk-lib
include $$(CLEAR_VARS)
LOCAL_MODULE := $1.$2
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PREBUILT_MODULE_FILE := $$(TARGET_OUT_INTERMEDIATE_LIBRARIES)/$1.so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := first
LOCAL_MODULE_TAGS := optional
LOCAL_INSTALLED_MODULE_STEM := $1.so
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := $3
LOCAL_VENDOR_MODULE := $4
include $$(BUILD_PREBUILT)

ifneq ($$(TARGET_2ND_ARCH),)
ifneq ($$(TARGET_TRANSLATE_2ND_ARCH),true)
include $$(CLEAR_VARS)
LOCAL_MODULE := $1.$2
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PREBUILT_MODULE_FILE := $$($$(TARGET_2ND_ARCH_VAR_PREFIX)TARGET_OUT_INTERMEDIATE_LIBRARIES)/$1.so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 32
LOCAL_MODULE_TAGS := optional
LOCAL_INSTALLED_MODULE_STEM := $1.so
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := $3
LOCAL_VENDOR_MODULE := $4
include $$(BUILD_PREBUILT)
endif  # TARGET_TRANSLATE_2ND_ARCH is not true
endif  # TARGET_2ND_ARCH is not empty
endef

$(foreach lib,$(VNDK_SP_LIBRARIES),\
    $(eval $(call define-vndk-lib,$(lib),vndk-sp-gen,vndk-sp,)))
$(foreach lib,$(VNDK_SP_EXT_LIBRARIES),\
    $(eval $(call define-vndk-lib,$(lib),vndk-sp-ext-gen,vndk-sp,true)))
$(foreach lib,$(EXTRA_VENDOR_LIBRARIES),\
    $(eval $(call define-vndk-lib,$(lib),vndk-ext-gen,,true)))


#-------------------------------------------------------------------------------
# Phony Package
#-------------------------------------------------------------------------------

include $(CLEAR_VARS)
LOCAL_MODULE := vndk-sp
LOCAL_MODULE_TAGS := optional
LOCAL_REQUIRED_MODULES := \
    $(addsuffix .vndk-sp-gen,$(VNDK_SP_LIBRARIES)) \
    $(addsuffix .vndk-sp-ext-gen,$(VNDK_SP_EXT_LIBRARIES)) \
    $(addsuffix .vndk-ext-gen,$(EXTRA_VENDOR_LIBRARIES))
include $(BUILD_PHONY_PACKAGE)
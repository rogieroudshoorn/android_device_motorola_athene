#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.biometrics.fingerprint@2.1-service_32
LOCAL_INIT_RC := android.hardware.biometrics.fingerprint@2.1-service_32.rc
LOCAL_PROPRIETARY_MODULE := true
LOCAL_32_BIT_ONLY := true
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := \
    ../../../../hardware/interfaces/biometrics/fingerprint/2.1/default/BiometricsFingerprint.cpp \
    ../../../../hardware/interfaces/biometrics/fingerprint/2.1/default/service.cpp

LOCAL_SHARED_LIBRARIES := \
    libcutils \
    liblog \
    libhidlbase \
    libhidltransport \
    libhardware \
    libutils \
    android.hardware.biometrics.fingerprint@2.1

include $(BUILD_EXECUTABLE)

# Copyright (C) 2015 The CyanogenMod Project
#           (C) 2017 The LineageOS Project
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

# Inherit some common Arrow stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

$(call inherit-product, device/motorola/athene/full_athene.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920
TARGET_BOOTANIMATION_HALF_RES := true

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := athene
PRODUCT_NAME := arrow_athene
PRODUCT_RELEASE_NAME := athene
PRODUCT_BRAND := Motorola
PRODUCT_MANUFACTURER := Motorola

BOARD_VENDOR := motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
	PRIVATE_BUILD_DESC="athene_f-user 7.0 NPJ25.93-14-18 3 release-keys" \

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "motorola/athene_f/athene_f:7.0/NPJ25.93-14-18/3:user/release-keys"

#
# Copyright (C) 2019 The AOSP Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common Pixel stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Gapps arch
TARGET_GAPPS_ARCH := arm64

# Inherit from X01BD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_X01BD
PRODUCT_DEVICE := X01BD
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_X01BDA
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

TARGET_VENDOR := asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_X01BD_1 \
    PRODUCT_NAME=WW_X01BD \
    PRIVATE_BUILD_DESC="sdm660_64-user 9 PKQ1 1162 release-keys"

# Build fingerprint
BUILD_FINGERPRINT := "asus/WW_X01BD/ASUS_X01BD_1:9/PKQ1/16.2017.1905.065-20190507:user/release-keys"

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

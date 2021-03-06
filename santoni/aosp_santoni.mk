#
# Copyright (C) 2018 The LineageOS Project
#
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

# Include Bootanimation configuration
TARGET_GAPPS_ARCH := arm64
GAPPS_VARIANT := micro
TARGET_BOOT_ANIMATION_RES := 720
TARGET_INCLUDE_ARCORE := true

#gapps
-include vendor/gapps/config.mk

# Extra Essential Gapps
GAPPS_PRODUCT_PACKAGES += \
    YouTube

# Inherit some common Mokee stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from santoni device
$(call inherit-product, device/xiaomi/santoni/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := santoni
PRODUCT_MODEL := Redmi 4X
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := aosp_santoni

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := santoni

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="santoni-user 7.1.2 N2G47H V9.2.1.0.NAMCNEK release-keys"

BUILD_FINGERPRINT := Xiaomi/santoni/santoni:7.1.2/N2G47H/V9.2.1.0.NAMCNEK:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2018-07-05

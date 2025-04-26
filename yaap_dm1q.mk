#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/samsung/dm1q/device.mk)

# Inherit from the YAAP configuration.
$(call inherit-product, vendor/yaap/config/common_full_phone.mk)

PRODUCT_NAME := yaap_dm1q
PRODUCT_DEVICE := dm1q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-S911B
PRODUCT_MANUFACTURER := samsung

PRODUCT_CHARACTERISTICS := nosdcard

YAAP_BUILDTYPE := Voyager
TARGET_BUILD_GAPPS := true

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="dm1qxxx-user 14 UP1A.231005.007 S911BXXS7CXL2 release-keys" \
    BuildFingerprint=samsung/dm1qxxx/dm1q:14/UP1A.231005.007/S911BXXS7CXL2:user/release-keys \
    DeviceProduct=dm1qxxx \
    SystemName=dm1qxxx

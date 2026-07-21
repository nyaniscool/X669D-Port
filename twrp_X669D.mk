#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
DEVICE_PATH := device/infinix/X669D

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from infinix-X669D device
$(call inherit-product, device/infinix/X669D/device.mk)




PRODUCT_DEVICE := X669D
PRODUCT_NAME := twrp_X669D
PRODUCT_BRAND := infinix
PRODUCT_MODEL := infinix X669D
PRODUCT_MANUFACTURER := infinix
PRODUCT_RELEASE_NAME := infinix infinix X669D





PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="X669D-user 12 SP1A.210812.016 63 release-keys"

BUILD_FINGERPRINT := Infinix/X669D-GL/Infinix-X669D:12/SP1A.210812.016/GL-20240606V416:user/release-keys

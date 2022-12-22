#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from E10 device
$(call inherit-product, device/Elophone/E10/device.mk)

# Inherit some common omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_DEVICE := E10
PRODUCT_NAME := omni_E10
PRODUCT_BRAND := Elephone
PRODUCT_MODEL := E10
PRODUCT_MANUFACTURER := elephone

PRODUCT_GMS_CLIENTID_BASE := android-elephone

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k62v1_64_bsp-user 10 QP1A.190711.020 mp1V948 release-keys"

BUILD_FINGERPRINT := Elephone/E10_EEA/E10:10/QP1A.190711.020/mp1V948:user/release-keys

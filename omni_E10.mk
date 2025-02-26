#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, build/target/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from E10 device
$(call inherit-product, device/elephone/E10/device.mk)

PRODUCT_DEVICE := E10
PRODUCT_NAME := omni_E10
PRODUCT_BRAND := Elephone
PRODUCT_MODEL := E10
PRODUCT_MANUFACTURER := elephone

PRODUCT_GMS_CLIENTID_BASE := android-elephone

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k62v1_64_bsp-user 10 QP1A.190711.020 mp1V948 release-keys"

BUILD_FINGERPRINT := Elephone/E10_EEA/E10:10/QP1A.190711.020/mp1V948:user/release-keys

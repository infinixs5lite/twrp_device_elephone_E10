#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/elephone/E10

# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

PRODUCT_PACKAGES_DEBUG += \
    update_engine_client

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 29

# API
PRODUCT_SHIPPING_API_LEVEL := 29

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service

PRODUCT_PACKAGES += \
    bootctrl.mt6765

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# mtk encryption
PRODUCT_PACKAGES += \
    mtk_decrypt \
    mtk_decrypt_fbe

# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# Health Hal
PRODUCT_PACKAGES += \
     android.hardware.health@2.1-impl \
     android.hardware.health@2.1-service

PRODUCT_PACKAGES_DEBUG += \
    bootctl

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
        ro.crypto.allow_encrypt_override=true \
	ro.crypto.dm_default_key.options_format.version=2 \
	ro.crypto.volume.filenames_mode=aes-256-cts \
	ro.crypto.volume.metadata.method=dm-default-key \
	ro.crypto.volume.options=::v2

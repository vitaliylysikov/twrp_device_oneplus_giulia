#
# Copyright (C) 2025 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/oneplus/giulia

# Enable Virtual A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/vabc_features.mk)
PRODUCT_VIRTUAL_AB_COMPRESSION_METHOD := zstd
PRODUCT_VIRTUAL_AB_COW_VERSION := 3
PRODUCT_VIRTUAL_AB_COMPRESSION_FACTOR := 65536
PRODUCT_VENDOR_PROPERTIES += ro.virtual_ab.compression.threads=true
PRODUCT_VENDOR_PROPERTIES += ro.virtual_ab.batch_writes=true

# Configure emulated_storage.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit from device.mk configuration
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Release name
PRODUCT_RELEASE_NAME := giulia

## Device identifier
PRODUCT_DEVICE := giulia
PRODUCT_NAME := twrp_giulia
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := giulia
PRODUCT_MANUFACTURER := OnePlus

# Theme
TW_STATUS_ICONS_ALIGN := center
TW_Y_OFFSET := 111
TW_H_OFFSET := -111

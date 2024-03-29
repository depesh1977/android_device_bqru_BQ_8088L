#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from BQ_8088L device
$(call inherit-product, device/bqru/BQ_8088L/device.mk)

PRODUCT_DEVICE := BQ_8088L
PRODUCT_NAME := twrp_BQ_8088L
PRODUCT_BRAND := BQru
PRODUCT_MODEL := BQ-8088L
PRODUCT_MANUFACTURER := Bqru

PRODUCT_GMS_CLIENTID_BASE := android-wheatek

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="s9863alp35_Natv-user 11 RP1A.201005.001 20220228 release-keys"

BUILD_FINGERPRINT := BQru/BQ_8088L/BQ_8088L:11/RP1A.201005.001/20220228:user/release-keys

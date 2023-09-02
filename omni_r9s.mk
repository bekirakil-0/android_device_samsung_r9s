#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from r9s device
$(call inherit-product, device/samsung/r9s/device.mk)

PRODUCT_DEVICE := r9s
PRODUCT_NAME := omni_r9s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G990E
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="r9sxxx-user 11 RP1A.200720.012 G990EXXS7EWG1 release-keys"

BUILD_FINGERPRINT := samsung/r9sxxx/r9s:11/RP1A.200720.012/G990EXXS7EWG1:user/release-keys

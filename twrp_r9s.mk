#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 Bekirakil
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from r9s device
$(call inherit-product, device/samsung/r9s/device.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/r9s/recovery/root,recovery/root)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="r9sxxx-user 11 RP1A.200720.012 G990EXXSHGYH2 release-keys"

BUILD_FINGERPRINT := samsung/r9sxxx/r9s:11/RP1A.200720.012/G990EXXSHGYH2:user/release-keys


## Device identifier
PRODUCT_DEVICE := r9s
PRODUCT_NAME := twrp_r9s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G990E
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss


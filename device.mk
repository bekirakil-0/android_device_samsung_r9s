#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 Bekirakil
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/samsung/r9s

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# device decryption (need fix)
 PRODUCT_PACKAGES += \ 
   exynos_decrypt \
   exynos_decrypt_fbe

# Enable Fuse Passthrough
PRODUCT_PROPERTY_OVERRIDES += persist.sys.fuse.passthrough.enable=true

#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/samsung/r9s

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd
    
# Enable Fuse Passthrough
PRODUCT_PROPERTY_OVERRIDES += persist.sys.fuse.passthrough.enable=true

# Keymaster and Gatekeeper Initalization
PRODUCT_PROPERTY_OVERRIDES += \
    ro.crypto.state=encrypted \
    ro.crypto.type=file \
    ro.crypto.volume.filenames_mode=aes-256-cts

# Gatekeeper/Keymaster HAL Packages
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-service \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.keymaster@4.0-service \
    android.hardware.keymaster@4.0-impl \
    android.hardware.keymaster@4.0-strongbox-service

# For Prebuild Vendor
# PRODUCT_COPY_FILES += \
#    vendor/samsung/r9s/proprietary/vendor/bin/hw/android.hardware.keymaster@4.0-strongbox-service:recovery/root/vendor/bin/hw/android.hardware.keymaster@4.0-strongbox-service
#    vendor/samsung/r9s/proprietary/vendor/bin/hw/android.hardware.keymaster@4.0-impl:recovery/root/vendor/bin/hw/android.hardware.keymaster@4.0-impl
#    vendor/samsung/r9s/proprietary/vendor/bin/hw/android.hardware.keymaster@4.0-service:recovery/root/vendor/bin/hw/android.hardware.keymaster@4.0-service
#    vendor/samsung/r9s/proprietary/vendor/bin/hw/android.hardware.gatekeeper@1.0-impl:recovery/root/vendor/bin/hw/android.hardware.gatekeeper@1.0-impl
#    vendor/samsung/r9s/proprietary/vendor/bin/hw/android.hardware.gatekeeper@1.0-service:recovery/root/vendor/bin/hw/android.hardware.gatekeeper@1.0-service

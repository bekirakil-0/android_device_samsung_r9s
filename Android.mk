#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 Bekirakil
#
# SPDX-License-Identifier: Apache-2.0
#

ifneq ($(filter r9s, $(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
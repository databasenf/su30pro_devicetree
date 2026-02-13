#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from su30pro device
$(call inherit-product, device/iflytek/su30pro/device.mk)

PRODUCT_DEVICE := su30pro
PRODUCT_NAME := omni_su30pro
PRODUCT_BRAND := iFLYTEK
PRODUCT_MODEL := rk3588s_su30pro_native
PRODUCT_MANUFACTURER := iflytek

PRODUCT_GMS_CLIENTID_BASE := android-iflytek

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="su30pro-user 12 SQ3A.220605.009.B1 eng.root.20260107.212046 release-keys"

BUILD_FINGERPRINT := iFLYTEK/su30pro/su30pro:12/SQ3A.220605.009.B1/root01072119:user/release-keys

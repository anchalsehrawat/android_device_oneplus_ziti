#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ziti device
$(call inherit-product, device/oneplus/ziti/device.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Environment Flags
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

#Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080


PRODUCT_NAME := aosp_ziti
PRODUCT_DEVICE := ziti
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2569

PRODUCT_SYSTEM_NAME := OP5953L1
PRODUCT_SYSTEM_DEVICE := OP5953L1

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="CPH2569-user 14 UKQ1.230924.001 T.R4T2.1695bc3-1-2 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/CPH2569/OP5953L1:14/UKQ1.230924.001/T.R4T2.1695bc3-1-2:user/release-keys

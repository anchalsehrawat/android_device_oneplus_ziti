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

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_ziti
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
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME) \
    RISING_CHIPSET="Snapdragon 782G" \
    RISING_MAINTAINER="Loid"


#RisingOS changes

#Battery Capacity
RISING_BATTERY := "5000 mAh"

#AOSP is the default package type, WITH_GMS will override the package type to PIXEL
RISING_PACKAGE_TYPE := "VANILLA_AOSP"

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := true

# whether to ship aperture camera, default is false
PRODUCT_NO_CAMERA := false

# Wether to ship lawnchair launcher
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true

#GMS Flags
WITH_GMS := false
# ships core GMS components that are needed to run GMS environment
TARGET_CORE_GMS := false
#Extra add-ons for GMS build, check RisingOS manifest for the list
TARGET_CORE_GMS_EXTRAS := false
# Wether to ship pixel launcher and set it as default launcher
TARGET_DEFAULT_PIXEL_LAUNCHER := true

BUILD_FINGERPRINT := OnePlus/CPH2569/OP5953L1:14/UKQ1.230924.001/T.R4T2.1695bc3-1-2:user/release-keys

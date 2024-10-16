#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
include device/oneplus/sm8350-common/BoardConfigCommon.mk

DEVICE_PATH := device/oneplus/ziti

# Display
TARGET_SCREEN_DENSITY := 450

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG += vendor/oplus_yupik_QGKI.config

# Partitions
BOARD_ONEPLUS_DYNAMIC_PARTITIONS_SIZE := 14491320320 # BOARD_SUPER_PARTITION_SIZE - 4MB
BOARD_SUPER_PARTITION_SIZE := 14495514624

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 103

# Touch
SOONG_CONFIG_NAMESPACES += OPLUS_LINEAGE_TOUCH_HAL
SOONG_CONFIG_OPLUS_LINEAGE_TOUCH_HAL := INCLUDE_DIR
SOONG_CONFIG_OPLUS_LINEAGE_TOUCH_HAL_INCLUDE_DIR := \
    $(DEVICE_PATH)/touch/include

# UDFPS
SOONG_CONFIG_qtidisplay_udfps := true

# Include the proprietary files BoardConfig.
include vendor/oneplus/ziti/BoardConfigVendor.mk

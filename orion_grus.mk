#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Elixir stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

ORION_MAINTAINER := Ph8+
ORION_MAINTAINER_LINK := https://t.me/PH8BUILD
ORION_BUILD_TYPE := UNOFFICIAL
ORION_GAPPS := false
TARGET_ENABLE_BLUR := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_HAS_UDFPS :=  true

BUILD_GOOGLE_CONTACTS := true
BUILD_GOOGLE_DIALER := true
BUILD_GOOGLE_MESSAGE := true

# Inherit from grus device
$(call inherit-product, device/xiaomi/grus/device.mk)

PRODUCT_NAME := orion_grus
PRODUCT_DEVICE := grus
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 9 SE

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="grus-user 11 RKQ1.200826.002 V12.5.1.0.RFBMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/grus/grus:11/RKQ1.200826.002/V12.5.1.0.RFBMIXM:user/release-keys

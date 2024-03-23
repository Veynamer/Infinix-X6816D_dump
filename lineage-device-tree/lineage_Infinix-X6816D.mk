#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from Infinix-X6816D device
$(call inherit-product, device/infinix/Infinix-X6816D/device.mk)

PRODUCT_DEVICE := Infinix-X6816D
PRODUCT_NAME := lineage_Infinix-X6816D
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X6816D
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="X6816D-ST683JKR-R-OP-230411V10"

BUILD_FINGERPRINT := Infinix/X6816D-OP/Infinix-X6816D:11/RP1A.201005.001/230411V10:user/release-keys

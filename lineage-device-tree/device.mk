#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-impl.recovery \
    android.hardware.boot@1.2-service

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# API levels
PRODUCT_SHIPPING_API_LEVEL := 30

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \
    log_to_csv.sh \
    loading.sh \
    para.sh \
    total.sh \

PRODUCT_PACKAGES += \
    fstab.enableswap \
    init.LF6.rc \
    init.LF6.usb.rc \
    init.X6816B.rc \
    init.X6816B.usb.rc \
    init.X6816C.rc \
    init.X6816C.usb.rc \
    init.X6816CEU.rc \
    init.X6816CEU.usb.rc \
    init.X6816CKESF.rc \
    init.X6816CKESF.usb.rc \
    init.X6816D.rc \
    init.X6816D.usb.rc \
    init.X6816DEEA.rc \
    init.X6816DEEA.usb.rc \
    init.X6816DRU.rc \
    init.X6816DRU.usb.rc \
    init.cali.rc \
    init.factorytest.rc \
    init.ram.rc \
    init.storage.rc \
    init.ums512_1h10.rc \
    init.ums512_1h10.usb.rc \
    init.ums512_1h10_go.rc \
    init.ums512_1h10_go.usb.rc \
    init.ums512_20c10.rc \
    init.ums512_20c10.usb.rc \
    init.ums512_2h10.rc \
    init.ums512_2h10.usb.rc \
    init.recovery.LF6.rc \
    init.recovery.X6816B.rc \
    init.recovery.X6816C.rc \
    init.recovery.X6816CEU.rc \
    init.recovery.X6816CKESF.rc \
    init.recovery.X6816D.rc \
    init.recovery.X6816DEEA.rc \
    init.recovery.X6816DRU.rc \
    init.recovery.common.rc \
    init.recovery.ums512_1h10.rc \
    init.recovery.ums512_1h10_go.rc \
    init.recovery.ums512_20c10.rc \
    init.recovery.ums512_2h10.rc \
    ueventd.LF6.rc \
    ueventd.X6816B.rc \
    ueventd.X6816C.rc \
    ueventd.X6816CEU.rc \
    ueventd.X6816CKESF.rc \
    ueventd.X6816D.rc \
    ueventd.X6816DEEA.rc \
    ueventd.X6816DRU.rc \
    ueventd.ums512_1h10.rc \
    ueventd.ums512_1h10_go.rc \
    ueventd.ums512_20c10.rc \
    ueventd.ums512_2h10.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.enableswap:$(TARGET_VENDOR_RAMDISK_OUT)/first_stage_ramdisk/fstab.enableswap

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/infinix/Infinix-X6816D/Infinix-X6816D-vendor.mk)

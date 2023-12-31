#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

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

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    FILESYSTEM_TYPE_vendor=ext4 \
    POSTINSTALL_OPTIONAL_vendor=true

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

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
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := nosdcard

# Rootdir
PRODUCT_PACKAGES += \
    erase_batinfo.sh \
    BLPower.sh \
    LcdPanel_VendorID.sh \
    LightFingerprintPosition.sh \
    PanelFrameRate.sh \
    VibCali_ship.sh \
    WifiMac.sh \
    WifiSARPower.sh \
    boot_vib.sh \
    cat_pcbid.sh \
    country.sh \
    create_pcbid.sh \
    firmware_version.sh \
    gauge_scale.sh \
    gf_ver.sh \
    grip_cal.sh \
    grip_chip_status_check.sh \
    grip_fpc_check.sh \
    grip_read_fw_status.sh \
    grip_vib_request.sh \
    hdcp_distribute.sh \
    init.asus.audbg.sh \
    init.asus.changebinder.sh \
    init.asus.check_asdf.sh \
    init.asus.checkdatalog.sh \
    init.asus.zram.sh \
    init.class_main.sh \
    init.crda.sh \
    init.kernel.post_boot-cape.sh \
    init.kernel.post_boot-diwali.sh \
    init.kernel.post_boot-taro.sh \
    init.kernel.post_boot.sh \
    init.mdm.sh \
    init.qcom.class_core.sh \
    init.qcom.coex.sh \
    init.qcom.early_boot.sh \
    init.qcom.efs.sync.sh \
    init.qcom.post_boot.sh \
    init.qcom.sdio.sh \
    init.qcom.sensors.sh \
    init.qcom.sh \
    init.qcom.usb.sh \
    init.qti.display_boot.sh \
    init.qti.ese.strongbox.sh \
    init.qti.kernel.debug-cape.sh \
    init.qti.kernel.debug-diwali.sh \
    init.qti.kernel.debug-taro.sh \
    init.qti.kernel.debug.sh \
    init.qti.kernel.early_debug-taro.sh \
    init.qti.kernel.early_debug.sh \
    init.qti.kernel.sh \
    init.qti.media.sh \
    init.qti.qcv.sh \
    init.qti.touch_boot.sh \
    init.qti.write.sh \
    keypad_irq_set.sh \
    magnetometer_accessory2_installed.sh \
    magnetometer_accessory_installed.sh \
    magnetometer_accessory_removed.sh \
    mcf_repair_vendor.sh \
    mount_apd.sh \
    paymentKeyCheck.sh \
    qca6234-service.sh \
    savelogmtp.sh \
    sensors_factory_init.sh \
    shutdown_debug.sh \
    ssr_cfg.sh \
    touch_ver.sh \
    ufs_info.sh \
    vendor_modprobe.sh \
    vendor_savelogs.sh \
    vib_load_cali.sh \
    widevine.sh \

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.asus.debugtool.rc \
    init.asus.rc \
    init.qcom.factory.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.qti.kernel.rc \
    init.qti.ufs.rc \
    init.target.rc \
    init.recovery.qcom.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom:$(TARGET_VENDOR_RAMDISK_OUT)/first_stage_ramdisk/fstab.qcom

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 31

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/asus/ASUS_AI2201/ASUS_AI2201-vendor.mk)

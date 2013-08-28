$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/t03g/t03g-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/t03g/overlay

LOCAL_PATH := device/samsung/t03g
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernAl
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernAl

PRODUCT_COPY_FILES += \
        device/samsung/t03g/recovery/init.rc:root/init.rc \
        device/samsung/t03g/modules/exfat_fs.ko:root/system/lib/exfat_fs.ko \
        device/samsung/t03g/modules/exfat_core.ko:root/system/lib/exfat_core.ko \
        device/samsung/t03g/recovery/encryption/libkeyutils.so:root/sbin/libkeyutils.so \
        device/samsung/t03g/recovery/encryption/libsec_ecryptfs.so:root/sbin/libsec_ecryptfs.so \
        device/samsung/t03g/recovery/encryption/libsec_km.so:root/sbin/libsec_km.so

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := cm_t03g
PRODUCT_BRAND := Samsung

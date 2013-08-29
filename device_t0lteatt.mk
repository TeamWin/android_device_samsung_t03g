$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/t0lteatt/t0lteatt-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/t0lteatt/overlay

LOCAL_PATH := device/samsung/t0lteatt
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernAl
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernAl

PRODUCT_COPY_FILES += \
        device/samsung/t0lteatt/recovery/init.rc:root/init.rc \
        device/samsung/t0lteatt/recovery/poweroff.sh:root/sbin/poweroff.sh \
        device/samsung/t0lteatt/modules/exfat_fs.ko:root/system/lib/modules/exfat_fs.ko \
        device/samsung/t0lteatt/modules/exfat_core.ko:root/system/lib/modules/exfat_core.ko \
        device/samsung/t0lteatt/recovery/encryption/libkeyutils.so:root/sbin/libkeyutils.so \
        device/samsung/t0lteatt/recovery/encryption/libsec_ecryptfs.so:root/sbin/libsec_ecryptfs.so \
        device/samsung/t0lteatt/recovery/encryption/libsec_km.so:root/sbin/libsec_km.so \
	device/samsung/t0ltetmo/recovery/runatboot.sh:root/sbin/runatboot.sh

$(call inherit-product, build/target/product/full.mk)

PRODUCT_PACKAGES += external/valgrind

PRODUCT_NAME := cm_t0lteatt
PRODUCT_BRAND := Samsung

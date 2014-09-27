$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/t03g/t0lteatt-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

LOCAL_PATH := $(LOCAL_PATH)
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernAl
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernAl

PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/recovery/poweroff.sh:root/sbin/poweroff.sh \
        $(LOCAL_PATH)/modules/exfat_fs.ko:root/system/lib/modules/exfat_fs.ko \
        $(LOCAL_PATH)/modules/exfat_core.ko:root/system/lib/modules/exfat_core.ko \
        $(LOCAL_PATH)/recovery/encryption/libkeyutils.so:root/sbin/libkeyutils.so \
        $(LOCAL_PATH)/recovery/encryption/libsec_ecryptfs.so:root/sbin/libsec_ecryptfs.so \
        $(LOCAL_PATH)/recovery/encryption/libsec_km.so:root/sbin/libsec_km.so \
		$(LOCAL_PATH)/recovery/runatboot.sh:root/sbin/runatboot.sh \
		$(LOCAL_PATH)/file_contexts:recovery/root/prebuilt_file_contexts \
        $(LOCAL_PATH)/recovery/init.recovery.smdk4x12.rc:root/init.recovery.smdk4x12.rc


$(call inherit-product, build/target/product/full.mk)

PRODUCT_PACKAGES += external/valgrind

PRODUCT_NAME := omni_t03g
PRODUCT_BRAND := Samsung

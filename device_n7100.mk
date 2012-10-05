$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/n7100/n7100-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/n7100/overlay

LOCAL_PATH := device/samsung/n7100
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernAl
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernAl

#$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := cm_n7100
PRODUCT_BRAND := Samsung

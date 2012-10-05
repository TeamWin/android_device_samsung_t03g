# Release name
PRODUCT_RELEASE_NAME := n7100

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/n7100/device_n7100.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := n7100
PRODUCT_NAME := cm_n7100
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := n7100
PRODUCT_MANUFACTURER := Samsung

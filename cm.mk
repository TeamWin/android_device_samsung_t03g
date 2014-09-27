# Release name
PRODUCT_RELEASE_NAME := t03g

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/t03g/device_t0lteatt.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := t03g
PRODUCT_NAME := cm_t03g
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := t03g
PRODUCT_MANUFACTURER := Samsung

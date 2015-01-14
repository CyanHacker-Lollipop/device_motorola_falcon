$(call inherit-product, device/motorola/falcon/full_falcon.mk)

# Inherit some common CH stuff.
$(call inherit-product, vendor/ch/config/common_full_phone.mk)

PRODUCT_RELEASE_NAME := MOTO G
PRODUCT_NAME := ch_falcon

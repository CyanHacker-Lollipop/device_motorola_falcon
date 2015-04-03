$(call inherit-product, device/motorola/falcon/full_falcon.mk)

################OPTIMIZATIONS###################
#Use Optimizations?
USE_OPTIMIZATIONS := true

ifneq ($(strip $(USE_OPTIMIZATIONS)),false)
#HACKIFY CONFIGURATION 

##Define ROM toolchain and LIB Verison(should be the same version number as the toolchain)
TARGET_GCC_AND := 4.8-sm
TARGET_LIB_VERSION := 4.8

##Define Kernel toolchain
TARGET_GCC_ARM := 4.9-sm

##Enable Pthread (only on newer devices)
ENABLE_PTHREAD := true

##Enable O3 Optimizations
O3_OPTIMIZATIONS:= true

##Enable ArchiDroid Optimizations
ARCHIDROID_OPTIMIZATIONS := true
endif
#################################################

##If you´re running an old device, set this to true
USE_LEGACY_GCC := false

# Boot animation
TARGET_SCREEN_HEIGHT := 720
TARGET_SCREEN_WIDTH := 1280

# Inherit some common CM stuff.
$(call inherit-product, vendor/ch/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/ch/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/moto/falcon/falcon.mk)

DEVICE_PACKAGE_OVERLAYS += device/moto/falcon/overlay-cm
PRODUCT_RELEASE_NAME := MOTO G
PRODUCT_NAME := ch_falcon

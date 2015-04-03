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

# Inherit some common CM stuff.
$(call inherit-product, vendor/ch/config/common_full_phone.mk)
$(call inherit-product, device/motorola/falcon/full_falcon.mk)

PRODUCT_RELEASE_NAME := MOTO G
PRODUCT_NAME := ch_falcon

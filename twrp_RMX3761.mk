# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

# Inherit from TWRP product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Device specific configs
$(call inherit-product, device/UNISOC/RMX3761/device.mk)

# Device identifier
PRODUCT_DEVICE := RMX3761
PRODUCT_NAME := twrp_RMX3761
PRODUCT_BRAND := UNISOC
PRODUCT_MODEL := RMX3761
PRODUCT_MANUFACTURER := UNISOC

PRODUCT_PROPERTY_OVERRIDES += ro.twrp.vendor_boot=true
# Release name
PRODUCT_RELEASE_NAME := Samsung Galaxy J5

# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280
TARGET_BOOT_ANIMATION_RES := 720

# Inherit some common Pixel Experience stuff.
$(call inherit-product-if-exists, vendor/aosp/config/common_full_phone.mk)

# Inherit some common AEX stuff.
$(call inherit-product-if-exists, vendor/aosp/common.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

## Device identifier. This must come after all inclusions
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := phone
PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_ARCH := arm
TARGET_DENSITY := hdpi
TARGET_GAPPS_ARCH := arm

# J5 is a low-end device, include minimal and Go apps
IS_GO_VERSION := true
TARGET_MINIMAL_APPS := true

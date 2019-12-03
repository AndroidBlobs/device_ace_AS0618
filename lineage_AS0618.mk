# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from AS0618 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := ace
PRODUCT_DEVICE := AS0618
PRODUCT_MANUFACTURER := ace
PRODUCT_NAME := lineage_AS0618
PRODUCT_MODEL := CLEVER 1

PRODUCT_GMS_CLIENTID_BASE := android-ace
TARGET_VENDOR := ace
TARGET_VENDOR_PRODUCT_NAME := AS0618
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="AS0618-user 8.1.0 O11019 1538240865 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := ACE/AS0618/AS0618:8.1.0/O11019/1538240865:user/release-keys

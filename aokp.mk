# Inherit AOSP device configuration for edison.
$(call inherit-product, device/motorola/edison/full_edison.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Common overlay
DEVICE_PACKAGE_OVERLAYS += device/motorola/edison/overlay/aokp

# Setup device specific product configuration.
PRODUCT_NAME := aokp_edison
PRODUCT_BRAND := ATT
PRODUCT_DEVICE := edison
PRODUCT_MODEL := MB865
PRODUCT_MANUFACTURER := MOTO
PRODUCT_SFX := att
PRODUCT_RELEASE_NAME := ATRIX2

DATE := $(shell date +%Y%m%d)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=${PRODUCT_DEVICE}_${PRODUCT_SFX} \
    BUILD_FINGERPRINT=${PRODUCT_BRAND}/${PRODUCT_DEVICE}_${PRODUCT_SFX}/${PRODUCT_DEVICE}:${PLATFORM_VERSION}/${BUILD_ID}/${DATE}:user/release-keys \
    PRIVATE_BUILD_DESC="${PRODUCT_DEVICE}-user ${PLATFORM_VERSION} ${BUILD_ID} ${DATE} release-keys" \

# Copy edison specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/bootanimation/bootanimation_540_960.zip:system/media/bootanimation.zip


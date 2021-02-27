include vendor/aosp/config/BoardConfigKernel.mk
include vendor/aosp/config/BoardConfigSoong.mk
include vendor/aosp/config/BoardConfigQcom.mk
include vendor/aosp/build/core/pathmap.mk

TARGET_SYSTEM_PROP += \
    vendor/aosp/config/system.prop

DEVICE_PACKAGE_OVERLAYS += vendor/aosp/overlay

# Styles & wallpapers
PRODUCT_COPY_FILES += \
    vendor/aosp/config/permissions/privapp_whitelist_com.android.wallpaper.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp_whitelist_com.android.wallpaper.xml \
    vendor/aosp/config/permissions/default_com.android.wallpaper.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/default_com.android.wallpaper.xml

include device/lineage/sepolicy/common/sepolicy.mk
BOARD_SEPOLICY_DIRS += vendor/aosp/sepolicy

SKIP_BOOT_JARS_CHECK := true

# Used to avoid getting errors for stuff we are not actually building
# Remove when and if possible
ALLOW_MISSING_DEPENDENCIES := true

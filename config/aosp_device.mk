# RIL Wrapper
PRODUCT_PACKAGES += \
    libril-wrapper

# SettingsExtra
PRODUCT_PACKAGES += \
    SettingsExtra

# Theme picker
PRODUCT_PACKAGES += \
    ThemePicker \
    ThemeStub

PRODUCT_PACKAGES += \
    messaging

PRODUCT_ENFORCE_RRO_TARGETS := framework-res

PRODUCT_VENDOR_KERNEL_HEADERS := device/oneplus/cheeseburger/kernel-headers

PRODUCT_SOONG_NAMESPACES += \
    vendor/qcom/opensource/data-ipa-cfg-mgr

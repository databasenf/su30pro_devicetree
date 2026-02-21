# Inherit from omni product
$(call inherit-product, device/iflytek/su30pro/omni_su30pro.mk)

# Override product name to twrp
PRODUCT_NAME := twrp_su30pro
PRODUCT_DEVICE := su30pro
PRODUCT_BRAND := iFLYTEK
PRODUCT_MODEL := rk3588s_su30pro_native
PRODUCT_MANUFACTURER := iflytek

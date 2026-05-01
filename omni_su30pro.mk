# 继承 TWRP 通用配置 (核心)
$(call inherit-product, vendor/twrp/config/common.mk)

# 包含你的设备特定配置 (device.mk)
$(call inherit-product, device/iflytek/su30pro/device.mk)

# 产品定义
PRODUCT_DEVICE := su30pro
PRODUCT_NAME := omni_su30pro
PRODUCT_BRAND := iflytek
PRODUCT_MODEL := SU30PRO SSD V12
PRODUCT_MANUFACTURER := iflytek

# 设置编译指纹（可以随便填，但建议参考原厂 build.prop）
PRODUCT_GMS_CLIENTID_BASE := iFLYTEK/su30pro/su30pro:12/SQ3A.220605.009.B1/root01072119:user/release-keys

# 强制指定显示语言
PRODUCT_DEFAULT_LOCALE := zh_CN

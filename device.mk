LOCAL_PATH := device/iflytek/su30pro

# 在 device/iflytek/su30pro/device.mk 中加入
PRODUCT_PACKAGES += \
    dtbo_prebuilt \
    dtb_prebuilt \
    kernel_prebuilt

# 拷贝 recovery.fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/recovery.fstab

# 声明动态分区
PRODUCT_USE_DYNAMIC_PARTITIONS := true

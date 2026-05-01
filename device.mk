LOCAL_PATH := device/iflytek/su30pro

# 拷贝 recovery.fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/recovery.fstab

# 声明动态分区
PRODUCT_USE_DYNAMIC_PARTITIONS := true

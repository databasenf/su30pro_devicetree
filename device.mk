LOCAL_PATH := device/iflytek/su30pro

# 单独对 dtb.img 增加拷贝指令
PRODUCT_COPY_FILES += \
    device/iflytek/su30pro/prebuilt/dtb.img:dtb.img \
    device/iflytek/su30pro/recovery.fstab:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/recovery.fstab

# 声明动态分区
PRODUCT_USE_DYNAMIC_PARTITIONS := true

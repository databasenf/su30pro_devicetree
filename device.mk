LOCAL_PATH := device/iflytek/su30pro

# 告诉系统将预编译文件拷贝到 TARGET_OUT_INTERMEDIATES 目录，供生成镜像使用
# PRODUCT_COPY_FILES += \
    # $(LOCAL_PATH)/prebuilt/kernel:kernel \
    # $(LOCAL_PATH)/prebuilt/dtb.img:dtb.img \
    # $(LOCAL_PATH)/prebuilt/dtbo.img:dtbo.img

# 拷贝 recovery.fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/recovery.fstab

# 声明动态分区
PRODUCT_USE_DYNAMIC_PARTITIONS := true

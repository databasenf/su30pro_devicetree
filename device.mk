# 拷贝 recovery.fstab
# 注意：Android 11+ 的 Recovery 路径通常是在 /system/etc/
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/recovery.fstab

# 如果你有 dtbo.img 且需要包含
ifeq ($(TARGET_PREBUILT_DTBOIMAGE),)
    # 自动搜索 dtbo
endif

# 声明动态分区支持
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# 开启 AOSP 的一些基础特性
PRODUCT_PACKAGES += \
    otafault \
    ext4_utils \
    e2fsck_static \
    mke2fs_static

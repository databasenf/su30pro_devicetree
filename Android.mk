LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),su30pro)

include $(CLEAR_VARS)
LOCAL_MODULE := dtbo_prebuilt
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := prebuilt/dtbo.img
LOCAL_MODULE_PATH := $(PRODUCT_OUT)
LOCAL_MODULE_STEM := dtbo.img
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := dtb_prebuilt
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := prebuilt/dtb.img
LOCAL_MODULE_PATH := $(PRODUCT_OUT)
LOCAL_MODULE_STEM := dtb.img
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := kernel_prebuilt
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := prebuilt/kernel
LOCAL_MODULE_PATH := $(PRODUCT_OUT)
LOCAL_MODULE_STEM := kernel
include $(BUILD_PREBUILT)

endif

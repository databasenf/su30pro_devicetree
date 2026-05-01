LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),su30pro)

# 定义一个内部函数来处理拷贝
define copy-prebuilt-file
$(eval $(PRODUCT_OUT)/$(2): $(LOCAL_PATH)/prebuilt/$(1)
	@echo "Copying $(1) -> $(2)"
	@mkdir -p $$(dir $$@)
	@cp -fp $$< $$@
)
endef

# 执行拷贝动作：(源码文件名, 目标文件名)
$(eval $(call copy-prebuilt-file,kernel,kernel))
$(eval $(call copy-prebuilt-file,dtb.img,dtb.img))
$(eval $(call copy-prebuilt-file,dtbo.img,dtbo.img))

endif

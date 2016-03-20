LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)


TARGET_BOOTLOADER_EMMC_INTERNAL := $(LOCAL_PATH)/images/emmc_appsboot.mbn
$(TARGET_BOOTLOADER_EMMC_INTERNAL): $(TARGET_BOOTLOADER)

INSTALLED_RADIOIMAGE_TARGET += $(TARGET_BOOTLOADER_EMMC_INTERNAL)

#----------------------------------------------------------------------
# extra images
#----------------------------------------------------------------------
include build/core/generate_extra_images.mk

$(call add-radio-file,firmware/logo.bin)
$(call add-radio-file,firmware/tz.mbn)
$(call add-radio-file,firmware/NON-HLOS.bin)
$(call add-radio-file,firmware/rpm.mbn)
$(call add-radio-file,firmware/sbl1.mbn)
$(call add-radio-file,firmware/sdi.mbn)
$(call add-radio-file,firmware/static_nvbk.bin)

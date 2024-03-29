LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SDK_VERSION := 9

LOCAL_SRC_FILES := \
    dgif_lib.c     \
    egif_lib.c     \
    gifalloc.c     \
    gif_err.c      \
    gif_hash.c     \
    quantize.c

LOCAL_CFLAGS += -Wno-format -Wno-sign-compare -Wno-unused-parameter -DHAVE_CONFIG_H
LOCAL_MODULE:= libgif

LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)
include $(BUILD_STATIC_LIBRARY)

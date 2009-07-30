LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_PRELINK_MODULE := false

LOCAL_SRC_FILES:= \
	G711EncTest.c \
	
LOCAL_C_INCLUDES := \
	$(TI_OMX_AUDIO)/g711_enc/inc \
	$(TI_OMX_COMP_C_INCLUDES)

LOCAL_SHARED_LIBRARIES := $(TI_OMX_COMP_SHARED_LIBRARIES)

	
LOCAL_CFLAGS := $(TI_OMX_CFLAGS) -DOMX_DEBUG

LOCAL_MODULE:= G711EncTest

include $(BUILD_EXECUTABLE)

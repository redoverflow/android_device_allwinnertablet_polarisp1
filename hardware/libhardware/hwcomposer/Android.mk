# Copyright (C) 2008 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


LOCAL_PATH := $(call my-dir)

# HAL module implemenation stored in
# hw/<OVERLAY_HARDWARE_MODULE_ID>.<ro.product.board>.so
include $(CLEAR_VARS)

LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_SHARED_LIBRARIES := liblog libEGL
LOCAL_SRC_FILES := hwc.cpp \
									 hwc_sunxi.cpp \
									 hwc_others.cpp \
									 hal.cpp
LOCAL_SHARED_LIBRARIES := \
	libutils \
	libEGL \
	libGLESv1_CM 
LOCAL_C_INCLUDES += $(TARGET_HARDWARE_INCLUDE)
LOCAL_MODULE := hwcomposer.$(TARGET_BOARD_PLATFORM)
LOCAL_CFLAGS:= -DLOG_TAG=\"hwcomposer\"
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

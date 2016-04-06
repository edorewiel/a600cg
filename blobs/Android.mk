LOCAL_PATH := $(call my-dir)

# com.intel.config
# ============================================================
include $(CLEAR_VARS)
# LOCAL_STATIC_JAVA_LIBRARIES := com.intel.config
LOCAL_MODULE := com.intel.config
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_JAVA_LIBRARIES)
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_BUILT_MODULE_STEM := com.intel.config$(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := com.intel.config/com.intel.config.jar
LOCAL_DEX_PREOPT := true
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)
# ====  permissions ========================
include $(CLEAR_VARS)
LOCAL_MODULE := com.intel.config.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/permissions
LOCAL_SRC_FILES := com.intel.config/com.intel.config.xml
include $(BUILD_PREBUILT)

# com.asus.fm
# ============================================================
include $(CLEAR_VARS)
# LOCAL_STATIC_JAVA_LIBRARIES := com.asus.fm
LOCAL_MODULE := com.asus.fm
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_JAVA_LIBRARIES)
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_BUILT_MODULE_STEM := com.asus.fm$(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := com.asus.fm/com.asus.fm.jar
LOCAL_DEX_PREOPT := true
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)
# ====  permissions ========================
include $(CLEAR_VARS)
LOCAL_MODULE := com.asus.fm.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/permissions
LOCAL_SRC_FILES := com.asus.fm/com.asus.fm.xml
include $(BUILD_PREBUILT)

# com.broadcom.bt
# ============================================================
include $(CLEAR_VARS)
# LOCAL_STATIC_JAVA_LIBRARIES := com.broadcom.bt
LOCAL_MODULE := com.broadcom.bt
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_JAVA_LIBRARIES)
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_BUILT_MODULE_STEM := com.broadcom.bt$(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := com.broadcom.bt/com.broadcom.bt.jar
LOCAL_DEX_PREOPT := true
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)
# ====  permissions ========================
include $(CLEAR_VARS)
LOCAL_MODULE := com.broadcom.bt.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/permissions
LOCAL_SRC_FILES := com.broadcom.bt/com.broadcom.bt.xml
include $(BUILD_PREBUILT)


# ============================================================
include $(CLEAR_VARS)
LOCAL_MODULE := OemTelephonyApp
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := OemTelephonyApp/OemTelephonyApp.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_DEX_PREOPT := true
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_PATH:=$(TARGET_OUT_APPS_PRIVILEGED)
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

# SARManager
# ============================================================
include $(CLEAR_VARS)
LOCAL_MODULE := SARManager
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := SARManager/SARManager.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_DEX_PREOPT := true
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_PATH:=$(TARGET_OUT_APPS_PRIVILEGED)
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)
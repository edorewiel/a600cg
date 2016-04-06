#
# Copyright (C) 2016 The Android Open-Source Project
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
#

LOCAL_PATH := device/asus/a600cg

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Intel Display
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=320

# Wi-Fi
PRODUCT_PACKAGES += \
	libwpa_client \
	hostapd \
	dhcpcd.conf \
	wpa_supplicant

PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
	frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.software.webview.xml:system/etc/permissions/android.software.webview.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=320 \
	ro.opengles.version = 196608

# USB
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory

# Filesystem Management Tools
PRODUCT_PACKAGES += \
	e2fsck \
	tune2fs \
	resize2fs

# Camera
PRODUCT_PACKAGES += \
	Camera2

# Libraries
PRODUCT_PACKAGES += \
	libtinyxml \
	minizip \
	openssl

PRODUCT_PACKAGES += \
	link_modprobe

# Intel MultiDisplay
PRODUCT_PACKAGES += \
	com.intel.multidisplay.xml \
	com.intel.multidisplay \
	libmultidisplay \
	libmultidisplayjni

ifeq ($(TARGET_PRODUCT),aosp_a600cg)
	DEVICE_PACKAGE_OVERLAYS := device/asus/a600cg/aosp/overlay
else
	DEVICE_PACKAGE_OVERLAYS := device/asus/a600cg/cm/overlay
endif

# This will build the plugins/libart-extension.so library
PRODUCT_PACKAGES += libart-extension

ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.debuggable=1 \
	persist.sys.usb.config=mtp \
	ro.secure=0 \
	ro.adb.secure=0

PRODUCT_PROPERTY_OVERRIDES += \
	ro.dalvik.vm.isa.arm=x86 \
	ro.enable.native.bridge.exec=1 \
	ro.kernel.android.checkjni=0 \
	dalvik.vm.checkjni=false

# Root and Tools
PRODUCT_PACKAGES += \
	procmem \
	procrank \
	su \
	screencap

# Frameworks
PRODUCT_PACKAGES += \
	com.asus.fm \
	com.asus.fm.xml \
	com.broadcom.bt \
	com.broadcom.bt.xml \
	com.intel.config \
	com.intel.config.xml

# MmgrClient, OemTelephonyApp and SARManager
PRODUCT_PACKAGES += \
	com.intel.internal.telephony.MmgrClient.xml \
	com.intel.internal.telephony.MmgrClient \
	OemTelephonyApp \
	SARManager

# Bluetooth Audio
PRODUCT_PACKAGES += audio.a2dp.default

# Prebuilt WebView
PRODUCT_PACKAGES += \
	libwebviewchromium_plat_support \
	libwebviewchromium_loader \
	webview

# TinyAlsa Binaries
PRODUCT_PACKAGES += \
	tinycap \
	tinymix \
	tinyplay

# Libraries Required by Intel Sources
PRODUCT_PACKAGES += \
	liblog \
	libdrm

# Video Acceleration API for Video Encoding and Decoding
PRODUCT_PACKAGES += \
	libva \
	libva-android \
	libva-tpi \
	libva_videodecoder \
	libva_videoencoder

# Window Space Buffer Manager Library
PRODUCT_PACKAGES += \
	libwsbm

# OpenMAX Video Encoders/Decoders
PRODUCT_PACKAGES += \
	libOMXVideoDecoderAVC \
	libOMXVideoDecoderAVCSecure \
	libOMXVideoDecoderH263 \
	libOMXVideoDecoderMPEG4 \
	libOMXVideoDecoderWMV \
	libOMXVideoEncoderAVC \
	libOMXVideoEncoderH263 \
	libOMXVideoEncoderMPEG4

# OpenMAX Interaction Layer Implementation for Intel VA API
PRODUCT_PACKAGES += \
	wrs_omxil_core \
	libwrs_omxil_core \
	libwrs_omxil_core_pvwrapped

# StageFright Hardware Decoding
PRODUCT_PACKAGES += \
	libstagefrighthw

# Non-AOSP Specific (CyanogenMod, MoKee)
ifneq ($(TARGET_PRODUCT),aosp_a600cg)
    # Device Display Name
    PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME="ASUS Zenfone 6"
endif

# MoKee Specific
ifeq ($(TARGET_PRODUCT),mk_a600cg)
    # MoKee is coming as Chinese by default, make it English
    PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_DEFAULT_LANGUAGE="en" \
        PRODUCT_DEFAULT_REGION="US"

    # AudioFX + jPush Library (needed by Settings [?])
    PRODUCT_PACKAGES += \
        libjpush180 \
        AudioFX
endif

$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

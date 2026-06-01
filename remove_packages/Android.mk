LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := remove_packages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := \
    Drive \
    Gmail2 \
    Maps \
    PrebuiltGmail \
    YouTube \
    GameSpace \
    OmniJaws
ifeq ($(BOMB_AUDIOFX),true)
TARGET_EXCLUDES_AUDIOFX := true
LOCAL_OVERRIDES_PACKAGES += \
    AudioFX \
    MusicFX
endif
ifeq ($(WITH_GMS),true)
LOCAL_OVERRIDES_PACKAGES := \
    Chrome \
    Chrome-Stub \
    talkback \
    AvatarPickerGoogle \
    Flipendo \
    QuickAccessWallet \
    GooglePrintRecommendationService \
    Velvet \
    NowPlayingPrebuilt \
    HealthIntelligencePrebuilt \
    AndroidAutoStubPrebuilt \
    CarrierLocation \
    GoogleOneTimeInitializer \
    OdadPrebuilt \
    NowPlayingPrebuilt
endif
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)

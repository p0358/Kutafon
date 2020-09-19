TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard
ARCHS = armv7 armv7s arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Kutafon

Kutafon_FILES = Tweak.x
Kutafon_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

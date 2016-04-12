THEOS_PACKAGE_DIR_NAME = debs
TARGET =: clang
ARCHS = armv7 armv7s arm64
DEBUG = 0
GO_EASY_ON_ME = 1
PACKAGE_VERSION = $(THEOS_PACKAGE_BASE_VERSION)

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = LPBarebonesExample
LPBarebonesExample_FILES = LPBarebonesExample.xm LPBarebonesExampleView.m LPBarebonesExampleViewController.m
LPBarebonesExample_FRAMEWORKS = UIKit
LPBarebonesExample_LIBRARIES = lockpages

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall backboardd"

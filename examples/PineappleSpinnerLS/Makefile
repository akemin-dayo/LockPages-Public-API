THEOS_PACKAGE_DIR_NAME = debs
TARGET =: clang
ARCHS = armv7 armv7s arm64
DEBUG = 0
GO_EASY_ON_ME = 1
PACKAGE_VERSION = $(THEOS_PACKAGE_BASE_VERSION)

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = PineappleSpinnerLS
PineappleSpinnerLS_FILES = PineappleSpinnerLS.xm PineappleView.m PineappleViewController.m
PineappleSpinnerLS_FRAMEWORKS = UIKit
PineappleSpinnerLS_LIBRARIES = lockpages

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall backboardd"

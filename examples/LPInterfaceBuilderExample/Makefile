THEOS_PACKAGE_DIR_NAME = debs
TARGET =: clang
ARCHS = armv7 armv7s arm64
DEBUG = 0
GO_EASY_ON_ME = 1
PACKAGE_VERSION = $(THEOS_PACKAGE_BASE_VERSION)

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = LPInterfaceBuilderExample
LPInterfaceBuilderExample_FILES = LPInterfaceBuilderExample.xm LPInterfaceBuilderExampleViewController.m
LPInterfaceBuilderExample_FRAMEWORKS = UIKit
LPInterfaceBuilderExample_LIBRARIES = lockpages

include $(THEOS_MAKE_PATH)/tweak.mk

clean::
	@echo Cleaning compiled NIB layout/Library/Application Support/LPInterfaceBuilderExample/Contents/Resources/LPBarebonesExampleView.xib
	@rm -f layout/Library/Application\ Support/LPInterfaceBuilderExample/Contents/Resources/LPBarebonesExampleView.nib

before-all::
	@echo Compiling XIB layout/Library/Application Support/LPInterfaceBuilderExample/Contents/Resources/LPBarebonesExampleView.xib
	@ibtool --compile layout/Library/Application\ Support/LPInterfaceBuilderExample/Contents/Resources/LPBarebonesExampleView.nib layout/Library/Application\ Support/LPInterfaceBuilderExample/Contents/Resources/LPBarebonesExampleView.xib

after-install::
	install.exec "killall backboardd"

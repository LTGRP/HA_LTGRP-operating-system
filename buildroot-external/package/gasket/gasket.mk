GASKET_VERSION = 97aeba584efd18983850c36dcf7384b0185284b3
GASKET_SITE = $(call github,google,gasket-driver,$(GASKET_VERSION))
GASKET_LICENSE = GPL-2.0
GASKET_LICENSE_FILES = LICENSE
GASKET_MODULE_SUBDIRS = src

#GASKET_MODULE_MAKE_OPTS = \
#	CONFIG_RTL8822BU=m \
#	KVER=$(LINUX_VERSION_PROBED) \
#	KBASE=$(LINUX_DIR) \
#	CROSS_COMPILE=$(TARGET_CROSS)

#ifeq (arm, $(filter arm, $(KERNEL_ARCH)))
#GASKET_MODULE_MAKE_OPTS += CONFIG_PLATFORM_ARM_RPI=y
#else
#GASKET_MODULE_MAKE_OPTS += CONFIG_PLATFORM_I386_PC=y
#endif

$(eval $(kernel-module))
$(eval $(generic-package))

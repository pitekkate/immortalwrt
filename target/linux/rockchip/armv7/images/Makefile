include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/image.mk

define Build/append-ubi
	sh $(TOPDIR)/scripts/ubinize.sh $(KDIR)/uImage $(KDIR)/root.ubi $(KDIR)/sysupgrade.img
endef

define Device/Default
  PROFILES := Default
  KERNEL_NAME := zImage
  KERNEL := kernel-bin | uImage none
  IMAGES := sysupgrade.img.gz
endef

include armv7.mk

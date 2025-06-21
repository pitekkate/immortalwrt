include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/target.mk

# =============================================
# Target Setup
# =============================================

# Board Identifier
BOARD:=rockchip
BOARDNAME:=Rockchip

# Supported Architectures
FEATURES:=ext4 usb usbgadget display gpio nand rtc squashfs

# Kernel Configuration
KERNEL_PATCHVER:=6.1
KERNEL_TESTING_PATCHVER:=6.6

# Supported Subtargets (ARMv7 and ARM64)
SUBTARGETS:=armv7 arm64

# =============================================
# Default Packages
# =============================================

# Common Packages for all Rockchip devices
DEFAULT_PACKAGES += \
	uboot-envtools \
	kmod-gpio-button-hotplug \
	kmod-leds-gpio \
	kmod-ata-ahci-platform \
	kmod-ata-core \
	kmod-block2mtd \
	kmod-dwmac-rk \
	kmod-dwc2 \
	kmod-ehci-platform \
	kmod-hwmon-core \
	kmod-i2c-core \
	kmod-libphy \
	kmod-mmc \
	kmod-ohci-platform \
	kmod-phy-rockchip-inno-usb2 \
	kmod-phy-rockchip-naneng-combphy \
	kmod-rtc-rk808 \
	kmod-sdhci \
	kmod-usb-core \
	kmod-usb-ehci \
	kmod-usb-net \
	kmod-usb-ohci \
	kmod-usb2 \
	kmod-usb3 \
	kmod-regulator-core \
	kmod-regulator-fixed \
	kmod-regulator-gpio \
	kmod-regulator-rk808 \
	kmod-sound-core \
	kmod-sound-soc-core \
	kmod-sound-soc-rockchip \
	kmod-sound-soc-rockchip-i2s \
	kmod-sound-soc-rockchip-spdif \
	kmod-sound-soc-simple-card \
	kmod-sound-soc-simple-card-utils \
	automount

# Architecture-Specific Packages
DEFAULT_PACKAGES.armv7 := kmod-usb-dwc2
DEFAULT_PACKAGES.arm64 := 

# =============================================
# Target Description
# =============================================

define Target/Description
	Build firmware images for Rockchip based devices.
	Supports:
	- ARMv7 devices (RK3xxx series)
	- ARM64 devices (RK33xx and RK35xx series)
endef

# =============================================
# Build Targets
# =============================================

ifeq ($(SUBTARGET),armv7)
  CPU_TYPE:=cortex-a7
  CPU_CFLAGS:=-march=armv7ve -mfloat-abi=hard -mfpu=neon-vfpv4
endif

ifeq ($(SUBTARGET),arm64)
  CPU_TYPE:=cortex-a53
  CPU_CFLAGS:=-mcpu=cortex-a53
endif

# Kernel Image Name
KERNELNAME:=Image dtbs

$(eval $(call BuildTarget))

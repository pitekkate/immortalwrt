define Device/hk1mini-rk3229
  DEVICE_VENDOR := HK1
  DEVICE_MODEL := Mini (RK3229)
  SOC := rk3229
  UBOOT_DEVICE_NAME := rk3229-box
  IMAGE/sysupgrade.img.gz := append-ubi | gzip
endef
TARGET_DEVICES += hk1mini-rk3229

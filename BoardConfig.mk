# Target Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

# Hardware defaults
USE_CAMERA_STUB := true
TARGET_BOARD_PLATFORM := polaris
BOARD_HAS_NO_SELECT_BUTTON := true

# Build options
TARGET_NO_BOOTLOADER := false
TARGET_NO_RECOVERY := false
TARGET_NO_KERNEL := false

TARGET_BOOTLOADER_BOARD_NAME := polaris_p1
TARGET_PROVIDES_INIT_RC := true

# Recovery (probably useless since we are not building recovery)
TARGET_RECOVERY_UI_LIB := librecovery_ui_polaris_p1
SW_BOARD_TOUCH_RECOVERY :=true
SW_BOARD_RECOVERY_CHAR_HEIGHT := 60
SW_BOARD_RECOVERY_CHAR_WIDTH  := 12
SW_BOARD_USE_CUSTOM_RECOVERY_FONT := "roboto_10x18.h"

# Cedar settings
CEDARX_CHIP_VERSION := F50
CEDARX_USE_SWAUDIO := Y
CEDARX_USE_ION_MEM_ALLOCATOR := Y
USE_OPENGL_RENDERER := true

# Widevine
BOARD_WIDEVINE_OEMCRYPTO_LEVEL := 3

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyS0,115200 rw init=/init loglevel=4
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
#TARGET_PREBUILT_KERNEL := device/allwinnertablet/polaris_p1/kernel
# nah we are gonna build one ourselves
TARGET_KERNEL_SOURCE := kernel/allwinnertablet/polaris_p1
TARGET_KERNEL_CONFIG := polarisp1_defconfig

# Memory
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648

# Path define for God knows what
TARGET_HARDWARE_INCLUDE := hardware/include

# Unwanted wifi stuff from BoardConfig.mk
# 1. realtek wifi configuration
# BOARD_WIFI_VENDOR := realtek
# ifeq ($(BOARD_WIFI_VENDOR), realtek)
    # WPA_SUPPLICANT_VERSION := VER_0_8_X
    # BOARD_WPA_SUPPLICANT_DRIVER := NL80211
    # BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_rtl
    # BOARD_HOSTAPD_DRIVER        := NL80211
    # BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_rtl

    # SW_BOARD_USR_WIFI := rtl8188eu
    # BOARD_WLAN_DEVICE := rtl8188eu

    # #SW_BOARD_USR_WIFI := rtl8723au
    # #BOARD_WLAN_DEVICE := rtl8723au
# endif

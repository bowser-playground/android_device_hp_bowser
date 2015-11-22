#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk

BOARD_VENDOR := hp

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a15

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := bowser
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := tegra

# Kernel
BOARD_KERNEL_CMDLINE := console=tty1 apparmor=0
TARGET_KERNEL_SOURCE := kernel/hp/bowser
TARGET_KERNEL_CONFIG := cyanogenmod_bowser_defconfig

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_RTL := true
BOARD_BLUEDROID_VENDOR_CONF := device/hp/bowser/bluetooth/vnd_bowser.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/hp/bowser/bluetooth

# Graphics
USE_OPENGL_RENDERER := true

# Partition
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608 #8MB
BOARD_CACHEIMAGE_PARTITION_SIZE := 2147483648 #2GB
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608 #8MB
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824 #1GB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12614369280 #12GB
BOARD_FLASH_BLOCK_SIZE := 4096

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := device/hp/bowser/rootdir/etc/fstab.bowser

# Wifi
BOARD_WLAN_DEVICE                := rtl
BOARD_HAVE_REALTEK_WIFI          := true
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_rtl
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_rtl
WIFI_DRIVER_FW_PATH_PARAM        := ""
WIFI_DRIVER_FW_PATH_AP           := ""
WIFI_DRIVER_FW_PATH_STA          := ""

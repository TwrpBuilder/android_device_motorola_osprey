#
# Copyright (C) 2018 The TwrpBuilder Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/motorola/osprey

TARGET_BOARD_PLATFORM := msm8916
TARGET_BOOTLOADER_BOARD_NAME := osprey

# Recovery
TW_EXCLUDE_SUPERSU := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_HW_DISK_ENCRYPTION := true
TW_INCLUDE_CRYPTO := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Kernel
TARGET_PREBUILT_KERNEL := device/motorola/osprey/kernel

TARGET_ARCH := arm
TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

TARGET_BOOTLOADER_BOARD_NAME := MSM8916
TARGET_BOARD_PLATFORM := msm8916
TARGET_NO_BOOTLOADER := true

BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom ehci-hcd.park=3 vmalloc=400M androidboot.bootdevice=7824900.sdhci movablecore=160M androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt device/motorola/osprey/dt.img

#Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216      # 16384 * 1024 mmcblk0p31
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16879616  # 16484 * 1024 mmcblk0p32
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2432696320  # 2375680 * 1024 mmcblk0p41
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4865261568 # 4751232 * 1024 mmcblk0p42

include device/generic/twrpbuilder/BoardConfig32.mk

#
# Copyright (C) 2018 The LineageOS Project
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

DEVICE_PATH := device/lge/style3lm

# Partitions
BOARD_SUPER_PARTITION_SIZE := 21470642176

# Inherit from common device tree
include device/lge/sdm845-common/BoardConfigCommon.mk

# Kernel
BOARD_KERNEL_CMDLINE += androidboot.hardware=style3lm androidboot.fstab_suffix=style3lm
TARGET_KERNEL_CONFIG := lineageos_style3lm_defconfig

# Lights
$(call soong_config_set,LGE_LIGHTS_HAL,INCLUDE_DIR,$(DEVICE_PATH)/include)

# inherit from the proprietary version
include vendor/lge/style3lm/BoardConfigVendor.mk

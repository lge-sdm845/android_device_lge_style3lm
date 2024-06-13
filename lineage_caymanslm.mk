#
# Copyright (C) 2019 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Indicate the first api level the device has been commercially launched on
PRODUCT_SHIPPING_API_LEVEL := 29

# Inherit from caymanslm device
$(call inherit-product, device/lge/caymanslm/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Device identifiers
PRODUCT_NAME := lineage_caymanslm
PRODUCT_DEVICE := caymanslm
PRODUCT_BRAND := lge
PRODUCT_MANUFACTURER := LGE
PRODUCT_RELEASE_NAME := VELVET

PRODUCT_GMS_CLIENTID_BASE := android-lge

TARGET_VENDOR_PRODUCT_NAME := caymanslm
TARGET_VENDOR_DEVICE_NAME := caymanslm

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=caymanslm \
    PRODUCT_NAME=caymanslm \
    PRIVATE_BUILD_DESC="caymanslm-user 12 SKQ1.211103.001 231250317a5f6 release-keys"

BUILD_FINGERPRINT := "lge/caymanslm/caymanslm:12/SKQ1.211103.001/231250317a5f6:user/release-keys"

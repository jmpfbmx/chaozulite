#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from chaozulite device
$(call inherit-product, device/bq/chaozulite/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := bq
PRODUCT_BRAND := bq
PRODUCT_DEVICE := chaozulite
PRODUCT_NAME := lineage_chaozulite
PRODUCT_MANUFACTURER := bq
PRODUCT_MODEL := Aquaris U Lite
TARGET_VENDOR := bq

PRODUCT_GMS_CLIENTID_BASE := android-bq

# Set product device & name
PRODUCT_BUILD_PROP_OVERRIDES += \
   PRODUCT_NAME=chaozulite \
   PRIVATE_BUILD_DESC="chaozulite-user 7.1.1 NMF26F 1109 release-keys"

BUILD_FINGERPRINT=bq/chaozulite/chaozulite:7.1.1/NMF26F/1109:user/release-keys \

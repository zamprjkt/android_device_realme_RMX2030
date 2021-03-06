#
# Copyright (C) 2018 The Android Open-Source Project
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

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from realme RMX2030
$(call inherit-product, device/realme/RMX2030/device.mk)

# Define first api level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Bootanimation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1600
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := lineage_RMX2030
PRODUCT_DEVICE := RMX2030
PRODUCT_MANUFACTURER := Realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme 5i

PRODUCT_GMS_CLIENTID_BASE := android-realme

BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ2A.210405.005/7181113:user/release-keys"

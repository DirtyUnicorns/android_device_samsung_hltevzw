#
# Copyright (C) 2014 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/samsung/hltevzw/hltevzw-vendor.mk)

# NFC
PRODUCT_PACKAGES += \
    nfc_nci.pn54x.default

PRODUCT_COPY_FILES += \
    device/samsung/hltevzw/configs/security_nfc_profile.dat:system/etc/security_nfc_profile.dat \
    device/samsung/hltevzw/configs/libnfc-nxp.conf:system/etc/libnfc-nxp.conf

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Common hlte
$(call inherit-product, device/samsung/hlte-common/hlte.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.du.updater=hltevzw

#
# Copyright (C) 2018 The Android Open Source Project
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

# Inherit Target Product stuff
$(call inherit-product, build/target/product/embedded.mk)

# Inherit some common PitchBlack stuff.
$(call inherit-product, vendor/pb/config/common.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Encryption
PRODUCT_PACKAGES += \
    libcryptfs_hw

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := X00P
PRODUCT_NAME := omni_X00P
PRODUCT_BRAND := ASUS
PRODUCT_MODEL := ASUS_X00PD
PRODUCT_MANUFACTURER := ASUS

# Blacklist Properties
PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.carrier \
    ro.build.date \
    ro.build.date.utc

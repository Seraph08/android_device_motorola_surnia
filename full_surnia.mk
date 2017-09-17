#
# Copyright (C) 2015 The Android Open-Source Project
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

# Inherit from surnia device
$(call inherit-product, device/motorola/surnia/device.mk)

# Add QC Video Enhancements flag
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Enable features in video HAL that can compile only on this platform
TARGET_USES_MEDIA_EXTENSIONS := true

#QTIC flag
-include $(QCPATH)/common/config/qtic-config.mk

-include $(TOPDIR)hardware/qcom/audio/configs/msm8916/msm8916.mk

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := surnia
PRODUCT_NAME := full_surnia

$(call inherit-product-if-exists, vendor/motorola/surnia/surnia-vendor.mk)

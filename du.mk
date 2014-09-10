$(call inherit-product, device/samsung/hltevzw/full_hltevzw.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/du/config/common.mk)

# add the apns from du.
$(call inherit-product, vendor/du/config/gsm.mk)

PRODUCT_DEVICE := hltevzw
PRODUCT_NAME := du_hltevzw

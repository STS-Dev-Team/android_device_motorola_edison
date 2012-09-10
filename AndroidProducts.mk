PRODUCT_MAKEFILES := $(LOCAL_DIR)/full_edison.mk
ifeq ($(TARGET_PRODUCT),aokp_edison)
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/aokp.mk
endif

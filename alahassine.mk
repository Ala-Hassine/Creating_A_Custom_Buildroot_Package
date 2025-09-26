################################################################################
#
# alahassine
#
################################################################################

ALAHASSINE_VERSION 			= 1.0.0
ALAHASSINE_SITE 			= ./package/alahassine/src
ALAHASSINE_SITE_METHOD 		= local
ALAHASSINE_LICENSE 			= MIT
ALAHASSINE_LICENSE_FILES 	= LICENSE

define ALAHASSINE_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define ALAHASSINE_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/alahassine $(TARGET_DIR)/usr/bin/alahassine
endef

define ALAHASSINE_INSTALL_STAGING_CMDS
	$(INSTALL) -D -m 0755 $(@D)/SetBit.h $(STAGING_DIR)/usr/include/SetBit.h
	$(INSTALL) -D -m 0755 $(@D)/libsetbit.a $(STAGING_DIR)/usr/lib/libsetbit.a
endef

$(eval $(generic-package))

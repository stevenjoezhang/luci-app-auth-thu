# SPDX-License-Identifier: GPL-3.0-only
#
# Copyright (C) 2025 Shuqiao Zhang

include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI for Auth THU
LUCI_DEPENDS:=+!wget&&!curl&&!wget-ssl:curl
LUCI_PKGARCH:=all

PKG_VERSION:=1.0.0

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
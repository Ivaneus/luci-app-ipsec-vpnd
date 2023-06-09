# Copyright (C) 2016 Openwrt.org
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI support for IPSec VPN Server (IKEv1 with PSK and Xauth)
LUCI_DEPENDS:=+strongswan +strongswan-minimal +strongswan-mod-xauth-generic +strongswan-mod-kernel-libipsec +strongswan-mod-eap-mschapv2 +strongswan-mod-dhcp +strongswan-mod-farp +kmod-tun
LUCI_PKGARCH:=all

PKG_NAME:=luci-app-ipsec-vpnd

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature

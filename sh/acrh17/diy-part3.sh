#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

#echo '修改机器名称'
#sed -i 's/OpenWrt/ACRH-17/g' package/base-files/files/bin/config_generate

#echo '修改网关地址'
sed -i 's/192.168.1.1/192.168.11.1/g' package/base-files/files/bin/config_generate

#echo '修改时区'
#sed -i "s/'UTC'/'CST-8'\n        set system.@system[-1].zonename='Asia\/Shanghai'/g" package/base-files/files/bin/config_generate

#echo '修改默认主题'
#sed -i 's/config internal themes/config internal themes\n    option Argon  \"\/luci-static\/argon\"/g' feeds/luci/modules/luci-base/root/etc/config/luci

#echo '去除默认bootstrap主题'
#sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap

#echo '删除旧版argon,链接新版'
#rm -rf ./package/lean/luci-theme-argon
#ln -s ../../../luci-theme-argon ./package/lean/

#echo '修改wifi名称'
sed -i 's/OpenWrt/ASUS/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

#echo '修改banner'
#rm -rf package/base-files/files/etc/banner
#cp -f ../banner package/base-files/files/etc/

#echo '下载ServerChan'
#git clone https://github.com/tty228/luci-app-serverchan ../diy/luci-app-serverchan

#echo '下载PushBot'
#git clone -b stable https://github.com/venpong/luci-app-pushbot.git ../diy/luci-app-pushbot

#echo '集成diy目录'
#ln -s ../../diy ./package/openwrt-packages





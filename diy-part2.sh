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

# Modify default IP
sed -i 's/192.168.1.1/192.168.50.31/g' package/base-files/files/bin/config_generate
# 删除原主题
rm -rf package/lean/luci-theme-argon
# 添加新主题
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
# 添加jerrykuku/luci-app-vssr
# git lua-maxminddb 依赖
#git clone https://github.com/jerrykuku/lua-maxminddb.git package/lean/lua-maxminddb
# 本体
#git clone https://github.com/jerrykuku/luci-app-vssr.git package/lean/luci-app-vssr

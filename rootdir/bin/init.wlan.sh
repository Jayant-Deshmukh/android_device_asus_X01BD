#! /vendor/bin/sh

#
# Copyright (C) 2019 The LineageOS Project
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

# Set the proper hardware based wlan mac
wifi_mac_path="/mnt/vendor/persist/wlan_mac.bin"

if [[ ! -f $wifi_mac_path ]] || [[ $(cat $wifi_mac_path | grep Intf0MacAddress | sed 's/Intf0MacAddress=//') != $(getprop ro.wifimac) ]]; then
    wifi_mac=$(getprop ro.wifimac);
echo "Intf0MacAddress=$wifi_mac" > $wifi_mac_path
fi;

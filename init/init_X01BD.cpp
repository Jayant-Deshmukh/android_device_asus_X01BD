/*
   Copyright (c) 2014, The Linux Foundation. All rights reserved.

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <stdlib.h>
#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>

#include <android-base/properties.h>
#include "property_service.h"
#include "vendor_init.h"

using android::base::GetProperty;

using android::init::property_set;

void property_override(char const prop[], char const value[])
{
    prop_info *pi;

    pi = (prop_info*) __system_property_find(prop);
    if (pi)
        __system_property_update(pi, value, strlen(value));
    else
        __system_property_add(prop, strlen(prop), value, strlen(value));
}

void property_override_dual(char const system_prop[], char const vendor_prop[],
    char const value[])
{
    property_override(system_prop, value);
    property_override(vendor_prop, value);
}

void property_override_triple(char const system_prop[], char const vendor_prop[], char const bootimg_prop[], char const value[])
{
    property_override(system_prop, value);
    property_override(vendor_prop, value);
    property_override(bootimg_prop, value);
}

void vendor_load_properties()
{
    std::string platform = android::base::GetProperty("ro.board.platform", "");

    if (platform != ANDROID_TARGET)
        return;

    property_override_dual("ro.product.device", "ro.vendor.product.device", "ASUS_X01BD_1");
    property_override_dual("ro.product.model", "ro.vendor.product.model", "ASUS_X01BDA");
    property_override_dual("ro.product.name", "ro.vendor.product.name", "WW_X01BD");
    property_override("ro.build.description", "sdm660_64-user 9 PKQ1 1162 release-keys");
    property_override_triple("ro.build.fingerprint", "ro.vendor.build.fingerprint", "ro.bootimage.build.fingerprint", "asus/WW_X01BD/ASUS_X01BD_1:9/PKQ1/16.2017.1905.065-20190507:user/release-keys");
	
}

/*
* Copyright (C) 2016 The OmniROM Project
*
* This program is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 2 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program. If not, see <http://www.gnu.org/licenses/>.
*
*/
package com.asus.zenparts;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.res.Resources;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v14.preference.PreferenceFragment;
import android.support.v7.preference.Preference;
import android.support.v7.preference.PreferenceCategory;
import android.support.v7.preference.PreferenceManager;
import android.support.v7.preference.PreferenceScreen;
import android.support.v14.preference.SwitchPreference;
import android.support.v7.preference.TwoStatePreference;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.util.Log;

public class DeviceSettings extends PreferenceFragment {

    private static final String KEY_CATEGORY_DISPLAY = "display";
    public static final String KEY_VIBSTRENGTH = "vib_strength";
    private static final String KEY_CATEGORY_USB_FASTCHARGE = "usb_fastcharge";
    public static final String USB_FASTCHARGE_KEY = "fastcharge";
    public static final String USB_FASTCHARGE_PATH = "/sys/kernel/fast_charge/force_fast_charge";

    private TwoStatePreference mTapToWakeSwitch;
    private VibratorStrengthPreference mVibratorStrength;

    private Preference mKcalPref;
    private SwitchPreference mFastcharge;
    private PreferenceCategory mUsbFastcharge;

    @Override
    public void onCreatePreferences(Bundle savedInstanceState, String rootKey) {
        setPreferencesFromResource(R.xml.main, rootKey);

        mKcalPref = findPreference("kcal");
        mKcalPref.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() {
            @Override
            public boolean onPreferenceClick(Preference preference) {
                Intent intent = new Intent(getContext(), DisplayCalibration.class);
                startActivity(intent);
                return true;
            }
        });

        if (Utils.fileWritable(USB_FASTCHARGE_PATH)) {
          mFastcharge = (SwitchPreference) findPreference(USB_FASTCHARGE_KEY);
          mFastcharge.setChecked(Utils.getFileValueAsBoolean(USB_FASTCHARGE_PATH, false));
          mFastcharge.setOnPreferenceChangeListener(this);
        } else {
          mUsbFastcharge = (PreferenceCategory) prefSet.findPreference("usb_fastcharge");
          prefSet.removePreference(mUsbFastcharge);
        }

        mVibratorStrength = (VibratorStrengthPreference) findPreference(KEY_VIBSTRENGTH);
        if (mVibratorStrength != null) {
            mVibratorStrength.setEnabled(VibratorStrengthPreference.isSupported());
        }
    }

    private void setFastcharge(boolean value) {
            Utils.writeValue(USB_FASTCHARGE_PATH, value ? "1" : "0");
    }

    @Override
    public boolean onPreferenceTreeClick(Preference preference) {
        return super.onPreferenceTreeClick(preference);
    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
    final String key = preference.getKey();
    boolean value;
    String strvalue;
    if (USB_FASTCHARGE_KEY.equals(key)) {
            value = (Boolean) newValue;
            mFastcharge.setChecked(value);
            setFastcharge(value);
            SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(getContext()).edit();
            editor.putBoolean(USB_FASTCHARGE_KEY, value);
            editor.commit();
            return true;
        }
        return true;
}

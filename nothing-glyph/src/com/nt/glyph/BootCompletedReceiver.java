/*
 * Copyright (C) 2015 The CyanogenMod Project
 *               2017-2019 The LineageOS Project
 *               2020-2024 Paranoid Android
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.nt.glyph;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

import com.nt.glyph.Constants.Constants;
import com.nt.glyph.Utils.ServiceUtils;

public class BootCompletedReceiver extends BroadcastReceiver {

    private static final boolean DEBUG = true;
    private static final String TAG = "nothing-glyph";

    @Override
    public void onReceive(final Context context, Intent intent) {
        if (DEBUG) Log.d(TAG, "Received boot completed intent");
        Constants.CONTEXT = context.getApplicationContext();
        ServiceUtils.checkGlyphService();
    }
}

// Copyright 2021 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// ignore_for_file: public_member_api_docs
import 'package:app_open_example/app_open_ad_manager.dart';
import 'package:flutter/material.dart';

class AppLifecycleReactor extends WidgetsBindingObserver {
  final AppOpenAdManager appOpenAdManager;

  AppLifecycleReactor({required this.appOpenAdManager});

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    // Try to show an app open ad if the app is being resumed and
    // we're not already showing an app open ad.
    if (state == AppLifecycleState.resumed) {
      appOpenAdManager.showAdIfAvailable();
    }
  }
}

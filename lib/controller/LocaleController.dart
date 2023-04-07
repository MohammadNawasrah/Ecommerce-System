// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:ecommercesystem/core/service/Services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();

  changeLanguage(String languageCode) {
    Locale locale = Locale(languageCode);
    myServices.sharedPreferences.setString("language", languageCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPreferencesLanguage =
        myServices.sharedPreferences.getString("language");
    if (sharedPreferencesLanguage == "ar") {
      language = const Locale("ar");
    } else if (sharedPreferencesLanguage == "en") {
      language = const Locale("en");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}

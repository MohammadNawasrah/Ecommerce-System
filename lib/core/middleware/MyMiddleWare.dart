// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/AppRoute.dart';
import '../service/Services.dart';

class MyMiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;
  MyServices myServices = Get.find();
  @override
  RouteSettings? redirect(String? route) {
    //to remove onboarding key
    // myServices.sharedPreferences.remove("onboarding");
    if (myServices.sharedPreferences.getString("onboarding") == "1") {
      return const RouteSettings(name: AppRoute.login);
    }
  }
}

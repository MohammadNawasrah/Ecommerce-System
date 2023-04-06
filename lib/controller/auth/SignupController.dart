// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:ecommercesystem/core/constant/AppRoute.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignupController extends GetxController {
  login();
  toSignup();
}

class SignupControllerImpl extends SignupController {
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController aginPassword;
  late TextEditingController userName;
  @override
  login() {}

  @override
  toSignup() {
    Get.toNamed(AppRoute.signup);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    aginPassword = TextEditingController();
    userName = TextEditingController();
    super.onInit();
  }
}

// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:ecommercesystem/core/constant/AppRoute.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  toSignup();
  toForgetPass();
}

class LoginControllerImpl extends LoginController {
  GlobalKey<FormState> formState = GlobalKey();
  late TextEditingController email;
  late TextEditingController password;
  @override
  login() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      print("valid");
    } else {
      print("notvalid");
    }
  }

  @override
  toSignup() {
    Get.toNamed(AppRoute.signup);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  toForgetPass() {
    Get.toNamed(AppRoute.forgetPass);
  }
}

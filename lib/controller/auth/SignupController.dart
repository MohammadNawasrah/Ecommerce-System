// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:ecommercesystem/core/constant/AppRoute.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignupController extends GetxController {
  toCheckEmail();
}

class SignupControllerImpl extends SignupController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController aginPassword;
  late TextEditingController userName;
  bool showPassword = true;
  bool showAginPassword = true;
  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    aginPassword = TextEditingController();
    userName = TextEditingController();
    super.onInit();
  }

  showPasswordF() {
    showPassword = showPassword == true ? false : true;
    update();
  }

  showAginPasswordF() {
    showAginPassword = showAginPassword == true ? false : true;
    update();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    aginPassword.dispose();
    userName.dispose();
    super.dispose();
  }

  @override
  toCheckEmail() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      Get.offNamed(AppRoute.verfiyEmail);
      Get.delete<SignupControllerImpl>();
    } else {}
  }
}

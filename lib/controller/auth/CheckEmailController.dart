// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/AppRoute.dart';

abstract class CheckEmailController extends GetxController {
  checkEmail();
  toVerifyEmail();
}

class CheckEmailControllerImpl extends CheckEmailController {
  late TextEditingController email;
  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  checkEmail() {
    throw UnimplementedError();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }

  @override
  toVerifyEmail() {
    Get.toNamed(AppRoute.verfiyEmail);
  }
}

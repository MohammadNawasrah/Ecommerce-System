// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:ecommercesystem/core/constant/AppRoute.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  checkEmail();
  toVerfiyCode();
}

class ForgetPasswordImpl extends ForgetPasswordController {
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
  toVerfiyCode() {
    Get.toNamed(AppRoute.verfiyCode);
  }
}

// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:ecommercesystem/core/constant/AppRoute.dart';
import 'package:get/get.dart';

abstract class SuccessResetPasswordController extends GetxController {
  toLogin();
}

class SuccessResetPasswordControllerImpl
    extends SuccessResetPasswordController {
  @override
  toLogin() {
    Get.offNamed(AppRoute.login);
  }
}

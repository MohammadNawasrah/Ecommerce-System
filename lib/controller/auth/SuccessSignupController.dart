// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:ecommercesystem/core/constant/AppRoute.dart';
import 'package:get/get.dart';

abstract class SuccessSignupController extends GetxController {
  toLogin();
}

class SuccessSignupControllerImpl extends SuccessSignupController {
  @override
  toLogin() {
    Get.toNamed(AppRoute.login);
  }
}

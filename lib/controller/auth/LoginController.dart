// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:ecommercesystem/core/constant/AppRoute.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  toSignup();
}

class LoginControllerImpl extends LoginController {
  @override
  login() {}

  @override
  toSignup() {
    Get.toNamed(AppRoute.signup);
  }
}

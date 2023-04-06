// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:ecommercesystem/core/constant/AppRoute.dart';
import 'package:ecommercesystem/core/middleware/MyMiddleWare.dart';
import 'package:ecommercesystem/view/screen/Language.dart';
import 'package:ecommercesystem/view/screen/OnBoarding.dart';
import 'package:ecommercesystem/view/screen/auth/SignUp.dart';
import 'package:ecommercesystem/view/screen/auth/SuccessSignup.dart';
import 'package:ecommercesystem/view/screen/auth/login.dart';
import 'package:ecommercesystem/view/screen/auth/verifyEmail.dart';
import 'package:ecommercesystem/view/screen/forgetPassword/ForgetPassword.dart';
import 'package:ecommercesystem/view/screen/forgetPassword/ResetPassword.dart';
import 'package:ecommercesystem/view/screen/forgetPassword/SuccessResetPassword.dart';
import 'package:ecommercesystem/view/screen/forgetPassword/VerfiyCode.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/",
      page: () => const LanguageSelect(),
      middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
  GetPage(name: AppRoute.signup, page: () => const Signup()),
  GetPage(name: AppRoute.forgetPass, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerfiyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoute.successResetPassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignup, page: () => const SuccessSignup()),
  GetPage(name: AppRoute.verfiyEmail, page: () => const VerfiyEmail()),
];

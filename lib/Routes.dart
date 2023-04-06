// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:ecommercesystem/core/constant/AppRoute.dart';
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
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
  AppRoute.selectLanguage: (context) => const LanguageSelect(),
  AppRoute.onBoarding: (context) => const OnBoarding(),
  AppRoute.signup: (context) => const Signup(),
  AppRoute.forgetPass: (context) => const ForgetPassword(),
  AppRoute.verfiyCode: (context) => const VerfiyCode(),
  AppRoute.resetPassword: (context) => const ResetPassword(),
  AppRoute.successResetPassword: (context) => const SuccessResetPassword(),
  AppRoute.successSignup: (context) => const SuccessSignup(),
  AppRoute.verfiyEmail: (context) => const VerfiyEmail(),
};

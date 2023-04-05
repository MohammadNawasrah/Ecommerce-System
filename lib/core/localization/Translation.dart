// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:get/get.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          //select language page
          "1": "اختر اللغة",
          "2": "عربي",
          "3": "انجليزي",
          //login page
          "4": "تسجيل الدخول",
          "6": "قم بتسجيل الدخول باستخدام حساب و رقم سري خاص",
          "11": "دخول",
          "12": "انشاء حساب جديد",
          //signup page
          "UserN": "اسم المستخدم",
          "EnterUN": "ادخل اسم المستخدم",
          "EnterAPassword": "ادخال الرقم السري مرة اخرى",
          //LS page
          "5": "مرحبا بعودتك",
          "Email": "بريد إلكتروني",
          "EnterE": "ادخل بريد إلكتروني",
          "EnterP": "ادخل الرقم السري",
          "Password": "الرقم السري",
        },
        "en": {
          "1": "Choose Language",
          "2": "Arabic",
          "3": "English",
          //login page
          "4": "Sign In",
          "6": "Sign In With Your Email And\nPassword ",
          "11": "Login",
          "12": "Create New Account",
          //signup page
          "UserN": "User Name",
          "EnterUN": "Enter User Name",
          "EnterAPassword": "Enter Password Agin",
          ////LS page
          "5": "Welcome Back",
          "Email": "Email",
          "EnterE": "Enter Your Email",
          "EnterP": "Enter Your Password",
          "Password": "Password",
        }
      };
}

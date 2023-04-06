// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ecommercesystem/controller/forgetPassword/ResetPasswordController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/ScreenSize.dart';

import '../../widget/auth/CustomButtonAuth.dart';

import '../../widget/auth/CustomTextTitleAuth.dart';
import '../../widget/auth/CutomTextFormAuth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImpl resetPasswordControllerImpl =
        Get.put(ResetPasswordControllerImpl());
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          "RePassword".tr,
          maxLines: 1,
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            CustomTextTitleAuth(title: "PasswordTitle".tr),
            SizedBox(height: ScreenSize.heightScreen(context) / 25),
            CustomTextFormAuth(
                textController: resetPasswordControllerImpl.password,
                hint: "EnterP".tr,
                label: "Password".tr,
                suffixIconT: const Icon(Icons.lock_outline_rounded)),
            SizedBox(height: ScreenSize.heightScreen(context) / 25),
            CustomTextFormAuth(
                textController: resetPasswordControllerImpl.password,
                hint: "EnterAPassword".tr,
                label: "Password".tr,
                suffixIconT: const Icon(Icons.lock_outline_rounded)),
            SizedBox(height: ScreenSize.heightScreen(context) / 30),
            CustomButtonAuth(
                buttonText: "save".tr,
                onPress: () {
                  resetPasswordControllerImpl.toSuccessResetPassword();
                },
                buttonColor: const Color.fromARGB(255, 240, 120, 111)),
          ],
        ),
      ),
    );
  }
}

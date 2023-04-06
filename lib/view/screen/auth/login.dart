// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ecommercesystem/controller/auth/LoginController.dart';

import 'package:ecommercesystem/core/constant/ScreenSize.dart';
import 'package:ecommercesystem/core/function/ValidInput.dart';
import 'package:ecommercesystem/view/widget/auth/CustomButtonAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/AppColor.dart';
import '../../../core/constant/AppImageAsset.dart';
import '../../../core/function/AlertExitApp.dart';
import '../../widget/auth/CustomButtonForgetPass.dart';
import '../../widget/auth/CustomLogoAuth.dart';
import '../../widget/auth/CustomTextBodyAuth.dart';
import '../../widget/auth/CustomTextTitleAuth.dart';
import '../../widget/auth/CutomTextFormAuth.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImpl loginController = Get.put(LoginControllerImpl());
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          "4".tr,
          maxLines: 1,
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Form(
            key: loginController.formState,
            child: ListView(
              children: [
                CustomLogoAuth(logoPath: AppImageAsset.logoLogin),
                CustomTextTitleAuth(title: "5".tr),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    child: CustomTextBodyAuth(title: "6".tr)),
                SizedBox(height: ScreenSize.heightScreen(context) / 20),
                CustomTextFormAuth(
                    valid: (val) {
                      return validInput(val!, 10, 100, "email");
                    },
                    textController: loginController.email,
                    hint: "EnterE".tr,
                    label: "Email".tr,
                    suffixIconT: const Icon(Icons.email_outlined)),
                SizedBox(height: ScreenSize.heightScreen(context) / 30),
                GetBuilder<LoginControllerImpl>(builder: (controller) {
                  return CustomTextFormAuth(
                      onTapIcon: () {
                        controller.showPasswordF();
                      },
                      isShow: controller.showPassword,
                      valid: (val) {
                        return validInput(val!, 8, 30, "password");
                      },
                      textController: loginController.password,
                      hint: "Password".tr,
                      label: "EnterP".tr,
                      suffixIconT: const Icon(Icons.lock_outline));
                }),
                SizedBox(height: ScreenSize.heightScreen(context) / 25),
                CustomButtonForgetPass(onTap: () {
                  loginController.toForgetPass();
                }),
                SizedBox(height: ScreenSize.heightScreen(context) / 25),
                // for login page
                CustomButtonAuth(
                    buttonText: "11".tr,
                    onPress: () {
                      loginController.login();
                    },
                    buttonColor: AppColor.primary),
                SizedBox(height: ScreenSize.heightScreen(context) / 30),
                // for sginup page
                CustomButtonAuth(
                    buttonText: "12".tr,
                    onPress: () {
                      loginController.toSignup();
                    },
                    buttonColor: const Color.fromARGB(255, 240, 120, 111)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

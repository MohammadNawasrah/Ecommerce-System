// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ecommercesystem/controller/auth/SignupController.dart';
import 'package:ecommercesystem/core/constant/ScreenSize.dart';
import 'package:ecommercesystem/view/widget/auth/CustomButtonAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/function/ValidInput.dart';
import '../../widget/auth/CustomTextBodyAuth.dart';
import '../../widget/auth/CustomTextTitleAuth.dart';
import '../../widget/auth/CutomTextFormAuth.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    SignupControllerImpl signupControllerImpl = Get.put(SignupControllerImpl());
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          "12".tr,
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
        child: Form(
          key: signupControllerImpl.formState,
          child: ListView(
            children: [
              CustomTextTitleAuth(title: "5".tr),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  child: CustomTextBodyAuth(title: "6".tr)),
              SizedBox(height: ScreenSize.heightScreen(context) / 25),
              CustomTextFormAuth(
                  valid: (val) {
                    return validInput(val!, 10, 30, "username");
                  },
                  textController: signupControllerImpl.userName,
                  hint: "EnterUN".tr,
                  label: "UserN".tr,
                  suffixIconT:
                      const Icon(Icons.supervised_user_circle_outlined)),
              SizedBox(height: ScreenSize.heightScreen(context) / 25),
              CustomTextFormAuth(
                  valid: (val) {
                    return validInput(val!, 10, 100, "email");
                  },
                  textController: signupControllerImpl.email,
                  hint: "EnterE".tr,
                  label: "Email".tr,
                  suffixIconT: const Icon(Icons.email_outlined)),
              SizedBox(height: ScreenSize.heightScreen(context) / 25),
              CustomTextFormAuth(
                  valid: (val) {
                    return validInput(val!, 8, 80, "password");
                  },
                  textController: signupControllerImpl.password,
                  hint: "EnterP".tr,
                  label: "Password".tr,
                  suffixIconT: const Icon(Icons.lock_outline)),
              SizedBox(height: ScreenSize.heightScreen(context) / 30),
              CustomTextFormAuth(
                  valid: (val) {
                    return validInput(val!, 8, 80, "password");
                  },
                  textController: signupControllerImpl.aginPassword,
                  hint: "EnterAPassword".tr,
                  label: "Password".tr,
                  suffixIconT: const Icon(Icons.lock_outline)),
              SizedBox(height: ScreenSize.heightScreen(context) / 30),
              CustomButtonAuth(
                  buttonText: "12".tr,
                  onPress: () {
                    signupControllerImpl.toCheckEmail();
                  },
                  buttonColor: const Color.fromARGB(255, 240, 120, 111)),
            ],
          ),
        ),
      ),
    );
  }
}

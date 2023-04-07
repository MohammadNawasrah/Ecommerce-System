// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ecommercesystem/controller/forgetPassword/ForgetPasswordController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/ScreenSize.dart';
import '../../../core/function/ValidInput.dart';
import '../../widget/auth/CustomButtonAuth.dart';
import '../../widget/auth/CustomTextBodyAuth.dart';
import '../../widget/auth/CustomTextTitleAuth.dart';
import '../../widget/auth/CutomTextFormAuth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordImpl forgetPasswordImpl = Get.put(ForgetPasswordImpl());
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          "forgetpass".tr,
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
          key: forgetPasswordImpl.formStateF,
          child: ListView(
            children: [
              CustomTextTitleAuth(title: "check".tr),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  child: CustomTextBodyAuth(title: "6".tr)),
              SizedBox(height: ScreenSize.heightScreen(context) / 25),
              SizedBox(height: ScreenSize.heightScreen(context) / 25),
              CustomTextFormAuth(
                  valid: (val) {
                    return validInput(val!, 10, 100, "email");
                  },
                  textController: forgetPasswordImpl.email,
                  hint: "EnterE".tr,
                  label: "Email".tr,
                  suffixIconT: const Icon(Icons.email_outlined)),
              SizedBox(height: ScreenSize.heightScreen(context) / 25),
              SizedBox(height: ScreenSize.heightScreen(context) / 30),
              CustomButtonAuth(
                  buttonText: "checkE".tr,
                  onPress: () {
                    forgetPasswordImpl.toVerfiyCode();
                  },
                  buttonColor: const Color.fromARGB(255, 240, 120, 111)),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ecommercesystem/core/constant/ScreenSize.dart';
import 'package:ecommercesystem/view/widget/auth/CustomButtonAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/AppColor.dart';
import '../../widget/auth/CustomTextBodyAuth.dart';
import '../../widget/auth/CustomTextTitleAuth.dart';
import '../../widget/auth/CutomTextFormAuth.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
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
        child: ListView(
          children: [
            CustomTextTitleAuth(title: "5".tr),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: CustomTextBodyAuth(title: "6".tr)),
            SizedBox(height: ScreenSize.heightScreen(context) / 10),
            CustomTextFormAuth(
                hint: "8".tr,
                label: "7".tr,
                suffixIconT: const Icon(Icons.email_outlined)),
            SizedBox(height: ScreenSize.heightScreen(context) / 30),
            CustomTextFormAuth(
                hint: "9".tr,
                label: "10".tr,
                suffixIconT: const Icon(Icons.lock_outline)),
            SizedBox(height: ScreenSize.heightScreen(context) / 30),
            CustomButtonAuth(
                buttonText: "11".tr,
                onPress: () {},
                buttonColor: AppColor.primary),
            SizedBox(height: ScreenSize.heightScreen(context) / 30),
            CustomButtonAuth(
                buttonText: "12".tr,
                onPress: () {},
                buttonColor: const Color.fromARGB(255, 240, 120, 111)),
          ],
        ),
      ),
    );
  }
}

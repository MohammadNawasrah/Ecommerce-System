// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constant/ScreenSize.dart';

import '../../../controller/auth/verifyEmailController.dart';
import '../../widget/auth/CustomButtonAuth.dart';
import '../../widget/auth/CustomTextBodyAuth.dart';
import '../../widget/auth/CustomTextTitleAuth.dart';
import '../../widget/forgetPassword/OTPText.dart';

class VerfiyEmail extends StatelessWidget {
  const VerfiyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    VerfiyEmailControllerImpl verfiyEmailControllerImpl =
        Get.put(VerfiyEmailControllerImpl());
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          "verify".tr,
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
            CustomTextTitleAuth(title: "verifyTitle".tr),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child:
                    CustomTextBodyAuth(title: "${"bodyText".tr}\nemail name")),
            SizedBox(height: ScreenSize.heightScreen(context) / 25),
            OTPText(
              onSubmet: (String text) {
                verfiyEmailControllerImpl.otpCode = text;
                verfiyEmailControllerImpl.toSuccessSignUp();
              },
            ),
            SizedBox(height: ScreenSize.heightScreen(context) / 25),
            CustomButtonAuth(
                buttonText: "checkE".tr,
                onPress: () {
                  verfiyEmailControllerImpl.toSuccessSignUp();
                },
                buttonColor: const Color.fromARGB(255, 240, 120, 111))
          ],
        ),
      ),
    );
  }
}

// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ecommercesystem/core/constant/ScreenSize.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/auth/SuccessSignupController.dart';
import '../../widget/auth/CustomButtonAuth.dart';

class SuccessSignup extends StatelessWidget {
  const SuccessSignup({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignupControllerImpl successResetPasswordControllerImpl =
        Get.put(SuccessSignupControllerImpl());
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AutoSizeText(
              maxLines: 1,
              "successPass".tr,
              style: const TextStyle(fontSize: 25),
            ),
            Icon(Icons.check_circle_outline,
                color: Colors.green, size: ScreenSize.widthScreen(context)),
            SizedBox(
              height: ScreenSize.heightScreen(context) / 2.9,
            ),
            SizedBox(
              width: double.infinity,
              child: CustomButtonAuth(
                  buttonText: "toLogin".tr,
                  onPress: () {
                    successResetPasswordControllerImpl.toLogin();
                  },
                  buttonColor: const Color.fromARGB(255, 115, 240, 111)),
            )
          ],
        ),
      ),
    );
  }
}

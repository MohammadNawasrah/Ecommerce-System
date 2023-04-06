// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:auto_size_text/auto_size_text.dart';
import 'package:ecommercesystem/core/constant/AppRoute.dart';
import 'package:ecommercesystem/core/constant/ScreenSize.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/LocaleController.dart';
import '../widget/language/ButtonLanguage.dart';

class LanguageSelect extends StatelessWidget {
  const LanguageSelect({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController localeController = Get.find();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AutoSizeText(
              "1".tr,
              maxLines: 1,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: ScreenSize.heightScreen(context) / 25,
            ),
            ButtonLanguage(
                languageText: "2".tr,
                onPressed: () {
                  localeController.changeLanguage("ar");
                  Get.offNamed(AppRoute.onBoarding);
                }),
            ButtonLanguage(
                languageText: "3".tr,
                onPressed: () {
                  localeController.changeLanguage("en");
                  Get.offNamed(AppRoute.onBoarding);
                }),
          ],
        ),
      ),
    );
  }
}

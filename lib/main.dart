import 'package:ecommercesystem/controller/LocaleController.dart';
import 'package:ecommercesystem/core/service/Services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Routes.dart';
import 'core/localization/Translation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController localController = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce System',
      locale: localController.language,
      getPages: routes,
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

import 'package:ecommercesystem/view/screen/OnBoarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Ecommerce System',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const OnBoarding(),
    );
  }
}

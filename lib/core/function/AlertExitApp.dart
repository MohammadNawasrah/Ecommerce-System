import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: "alirt".tr,
      confirm: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red[400]),
          onPressed: () {
            exit(0);
          },
          child: Text("confirm".tr)),
      cancel: ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: Text("cancel".tr)),
      content: Text("body".tr));
  return Future.value(true);
}

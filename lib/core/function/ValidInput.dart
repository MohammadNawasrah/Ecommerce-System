// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "NotUername".tr;
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "NotEmail".tr;
    }
  }
  if (type == "phoneNumber") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "NotPhone".tr;
    }
  }
  if (val.isEmpty) {
    return "empty".tr;
  }
  if (val.length < min) {
    return "${"minText".tr} $min";
  }
  if (val.length > max) {
    return "${"maxText".tr} $max";
  }
}

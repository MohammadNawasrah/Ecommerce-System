// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:ecommercesystem/core/constant/AppRoute.dart';
import 'package:ecommercesystem/view/screen/login.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.Login: (context) => const Login()
};

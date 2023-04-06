// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:flutter/cupertino.dart';

import '../../../core/constant/AppImageAsset.dart';

// ignore: must_be_immutable
class CustomLogoAuth extends StatelessWidget {
  String logoPath;
  CustomLogoAuth({super.key, required this.logoPath});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImageAsset.logoLogin,
      width: 150,
      height: 150,
    );
  }
}

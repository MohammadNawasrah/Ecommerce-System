// ignore_for_file: file_names

import 'dart:io';

netWorkCheck() async {
  try {
    var result = await InternetAddress.lookup("google.com");
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      return true;
    }
    return false;
  } on SocketException catch (e) {
    return false;
    // ignore: avoid_print
    print(e.toString());
  }
}

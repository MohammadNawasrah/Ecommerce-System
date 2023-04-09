// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'dart:convert';

import 'package:dartz/dartz.dart';

import '../function/NetworkCheck.dart';
import 'StateRequest.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StateRequest, Map>> postData(String linkurl, Map data) async {
    try {
      if (await netWorkCheck()) {
        var response = await http.post(Uri.parse(linkurl), body: data);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responseBody = jsonDecode(response.body);
          return Right(responseBody);
        } else {
          return const Left(StateRequest.serverFailure);
        }
      }
      return const Left(StateRequest.offlineFailure);
    } catch (e) {
      return const Left(StateRequest.serverFailure);
    }
  }
}

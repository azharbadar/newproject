import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Network {
  static Response? response;
  static final Dio dio = Dio();

  // static Future<dynamic> postApi(var token, var endUrl, var data) async {
  //   try {
  //     response = await dio.post(
  //       '$endUrl',
  //       options: Options(headers: {
  //         'Content-Type': "application/json",
  //         HttpHeaders.authorizationHeader: 'Bearer $token'
  //       }),
  //       data: data,
  //     );
  //     return response!.data;
  //   } on DioError catch (e) {
  //     if (e.response == null) {
  //       const SnackBar(content: Text("data not found"));
  //     } else {
  //       return e.response!.data;
  //     }
  //   }
  // }

  static Future<dynamic> getApi(var token, var endUrl) async {
    try {
      response = await dio.get('$endUrl',
          options: Options(headers: {
            'Accept': "application/json",
            HttpHeaders.authorizationHeader: 'Bearer $token'
          }));
      return response!.data;
    } on DioError catch (e) {
      print('=======> Api error: ${e.error}');
      return e.response?.data;
    }
  }
}

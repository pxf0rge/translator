import 'dart:convert';

import 'package:dio/dio.dart';

final class Requests {
  final Dio dio = Dio();

  Future<Response> get({required String url}) async {
    Response response = await dio.get(url);
    return response;
  }

  Future<Response> post({
    required String url,
    Object? data,
    Map<String, dynamic>? headers,
  }) async {
    Options options = Options();
    if (headers != null) {
      options.headers = headers;
    }
    if (data != null) {
      data = jsonEncode(data);
    }
    Response response = await dio.post(url, data: data, options: options);
    print(response.data);
    return response;
  }
}

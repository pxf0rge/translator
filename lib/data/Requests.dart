import 'package:dio/dio.dart';

final class Requests {
  Future<Response> get({required String url}) async {
    Response response = await Dio().get(url);
    return response;
  }
}

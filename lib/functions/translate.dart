import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:translator/data/Requests.dart';

Requests requests = Requests();

Future<String> tr({
  required String sourceLang,
  required String targetLang,
  required String text,
  required String apiToken,
}) async {
  String json =
      '{"source":"$sourceLang","target":"$targetLang","text":"$text"}';
  print(json);
  Response response = await requests.post(
    url: 'https://api.one-api.ir/translate/v1/microsoft',
    headers: {'one-api-token': apiToken},
    data: jsonDecode(json),
  );

  return response.data["result"];
}

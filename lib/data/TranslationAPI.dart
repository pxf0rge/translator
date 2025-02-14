import 'package:translator/functions/translate.dart';

final class TranslationAPI {
  final String apiToken;

  TranslationAPI({required this.apiToken});

  Future<String> trasnlate({
    required String source,
    required String target,
    required String text,
  }) async =>
      await tr(
        sourceLang: source,
        targetLang: target,
        text: text,
        apiToken: this.apiToken,
      );
}

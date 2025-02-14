final class TranslationAPI {
  final String apiToken;

  TranslationAPI({required this.apiToken});

  String trasnlate(
          {required String source,
          required String target,
          required String text}) =>
      trasnlate(source: source, target: target, text: text);
}

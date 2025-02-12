import 'package:flutter/material.dart';
import 'package:translator/pages/home.dart';
import 'package:translator/pages/loading.dart';

void main(List<String> args) {}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _getMainPage(),
    );
  }

  Widget _getMainPage() => LoadingPage();
}

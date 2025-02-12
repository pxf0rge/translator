import 'package:flutter/material.dart';

final class Nav {
  void push(Widget page, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  void pop(BuildContext context) {
    Navigator.pop(context);
  }
}

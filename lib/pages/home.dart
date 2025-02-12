import 'package:flutter/material.dart';
import 'package:translator/constants/AppColors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: _getBar(),
      body: SafeArea(
        child: _getHomeBody(),
      ),
    );
  }

  Widget _getHomeBody() {
    return Column(
      children: [],
    );
  }

  AppBar _getBar() {
    return AppBar(
      elevation: 0,
      title: Text(
        "Translate",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      backgroundColor: AppColors.elements,
    );
  }
}

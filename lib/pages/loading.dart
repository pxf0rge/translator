import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:translator/constants/AppColors.dart';
import 'package:translator/data/Nav.dart';
import 'package:translator/data/Requests.dart';
import 'package:translator/pages/home.dart';

class LoadingPage extends StatefulWidget {
  LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  String loadingText = "Translator is connecting...";
  Requests requests = Requests();
  Nav nav = Nav();
  bool isConnected = false;

  @override
  void initState() {
    checkConnection();
    super.initState();
  }

  void checkConnection() async {
    try {
      Response response = await requests.get(url: 'https://api.ipify.org');
      if (response.statusCode == 200) {
        nav.push(HomePage(), context);
      } else {
        setState(() {
          loadingText =
              "Failed to connect. Please check your network connection";
        });
      }
    } catch (e) {
      setState(() {
        loadingText = "Failed to connect. Please check your network connection";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: _getLoadingBody(),
      ),
    );
  }

  Widget _getLoadingBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        SpinKitDoubleBounce(
          color: AppColors.others,
          size: 100,
        ),
        SizedBox(height: 20, width: double.infinity),
        Text(
          loadingText,
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey[300],
          ),
        ),
      ],
    );
  }
}

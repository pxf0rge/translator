import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:translator/constants/AppColors.dart';
import 'package:translator/data/Requests.dart';

class LoadingPage extends StatefulWidget {
  LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  String loadingText = "Translator is connecting...";
  Requests requests = Requests();
  bool isConnected = false;

  @override
  void initState() async {
    Response response = await requests.get(url: 'https://api.ipify.org');
    if (response.statusCode == 200) {
      print(response.data);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
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
          color: AppColors.lightestPurple,
          size: 100,
        ),
        SizedBox(height: 20, width: double.infinity),
        Text(
          loadingText,
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey[300],
          ),
        ),
      ],
    );
  }
}

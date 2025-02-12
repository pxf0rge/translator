import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:translator/constants/AppColors.dart';

class LoadingPage extends StatelessWidget {
  LoadingPage({super.key});

  String loadingText = "Translator is connecting...";

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

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:translator/constants/AppColors.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

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
    return SpinKitDoubleBounce(
      color: AppColors.purple,
    );
  }
}

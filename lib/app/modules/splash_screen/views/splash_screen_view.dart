import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:xoom_sports/app/utilities/images.dart';
import 'package:xoom_sports/app/modules/splash_screen/controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.splashScaffoldKey,
      body: _buildSplashImage(),
    );
  }

  SizedBox _buildSplashImage() {
    return SizedBox(
      height: 690.h,
      width: 360.w,
      child: Image.asset(
        AppImages.splash,
        fit: BoxFit.fill,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xoom_sports/app/routes/app_pages.dart';

class SplashScreenController extends GetxController {
  final GlobalKey<ScaffoldState> splashScaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void onInit() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.offAllNamed(Routes.BOTTOM_NAV);
      },
    );
    super.onInit();
  }
}

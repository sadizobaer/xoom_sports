import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xoom_sports/app/modules/bottom_nav/controllers/bottom_nav_controller.dart';

import 'component/bottom_navbar.dart';

class BottomNavView extends GetView<BottomNavController> {
  const BottomNavView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: true,
        child: Obx(
          () => Stack(
            children: [
              /// selected tab view
              controller.selectedPage.value,
              /// bottom nav items
              const BottomNavbar(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:xoom_sports/app/utilities/colors.dart';
import 'package:xoom_sports/app/utilities/images.dart';

import '../controllers/bottom_nav_controller.dart';
import 'bottom_nav_item.dart';

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
              controller.selectedPage.value,
              Positioned(
                bottom: 0,
                child: Container(
                  width: 360.w,
                  height: 56.h,
                  color: AppColors.bottomNavColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BottomNavItem(
                        iconUrl: AppImages.home,
                        tabName: 'Home',
                        onTap: () {
                          controller.changeSelectedIndex(0);
                        },
                        color: controller.selectedIndex.value == 0
                            ? AppColors.redSelectedColor
                            : AppColors.itemColor,
                      ),
                      BottomNavItem(
                        iconUrl: AppImages.favorite,
                        tabName: 'Favorite',
                        onTap: () {
                          controller.changeSelectedIndex(1);
                        },
                        color: controller.selectedIndex.value == 1
                            ? AppColors.redSelectedColor
                            : AppColors.itemColor,
                      ),
                      BottomNavItem(
                        iconUrl: AppImages.watch,
                        tabName: 'Watch',
                        onTap: () {
                          controller.changeSelectedIndex(2);
                        },
                        color: controller.selectedIndex.value == 2
                            ? AppColors.redSelectedColor
                            : AppColors.itemColor,
                      ),
                      BottomNavItem(
                        iconUrl: AppImages.news,
                        tabName: 'News',
                        onTap: () {
                          controller.changeSelectedIndex(3);
                        },
                        color: controller.selectedIndex.value == 3
                            ? AppColors.redSelectedColor
                            : AppColors.itemColor,
                      ),
                      BottomNavItem(
                        iconUrl: AppImages.subscription,
                        tabName: 'Premium',
                        onTap: () {
                          controller.changeSelectedIndex(4);
                        },
                        color: controller.selectedIndex.value == 4
                            ? AppColors.redSelectedColor
                            : AppColors.itemColor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

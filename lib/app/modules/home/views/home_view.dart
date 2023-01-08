import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:xoom_sports/app/modules/home/views/components/calender.dart';
import 'package:xoom_sports/app/utilities/colors.dart';
import 'package:xoom_sports/app/utilities/images.dart';

import '../controllers/home_controller.dart';
import '../../../utilities/custom_clip_path.dart';
import 'components/home_item_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.homeScaffoldKey,
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          SizedBox(height: 40.h),
          Row(
            children: [
              SizedBox(width: 14.w),
              SizedBox(
                height: 24.h,
                width: 100.w,
                child: Image.asset(
                  AppImages.logo,
                  fit: BoxFit.fill,
                ),
              ),
              const Spacer(),
              SizedBox(
                height: 12.h,
                width: 16.w,
                child: Image.asset(
                  AppImages.drawer,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(width: 16.w),
            ],
          ),
          SizedBox(height: 8.h),
          Stack(
            children: [
              ClipPath(
                clipper: CustomClipPath(),
                child: Container(
                  height: 100.h,
                  width: 360.w,
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  color: AppColors.bottomNavColor,
                  child: const Calender(),
                ),
              ),
              Positioned(
                left: 24.w,
                child: Container(
                  height: 20.h,
                  width: 50.w,
                  color: AppColors.itemColor,
                  child: Center(
                    child: Text(
                      'Live',
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: AppColors.bottomNavColor.withOpacity(.6),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          ListView.builder(
            itemCount: 2,
            padding: EdgeInsets.all(0.sp),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return HomeItemView(
                firstIndex: index,
              );
            },
          ),
        ],
      ),
    );
  }
}

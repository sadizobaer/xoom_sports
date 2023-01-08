import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:xoom_sports/app/modules/match_details/views/components/tab_item.dart';
import 'package:xoom_sports/app/utilities/colors.dart';
import 'package:xoom_sports/app/utilities/images.dart';

import '../../../utilities/custom_clip_path.dart';
import '../controllers/match_details_controller.dart';

class MatchDetailsView extends GetView<MatchDetailsController> {
  const MatchDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          SizedBox(height: 40.h),
          Row(
            children: [
              SizedBox(width: 14.w),
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: AppColors.bottomNavColor,
                ),
              ),
              const Spacer(),
              const ImageIcon(
                AssetImage(AppImages.videoCamera),
              ),
              SizedBox(width: 16.w),
              const ImageIcon(
                AssetImage(AppImages.home),
              ),
              SizedBox(width: 16.w),
            ],
          ),
          SizedBox(height: 8.h),
          ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              height: 130.h,
              width: 360.w,
              color: AppColors.bottomNavColor,
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 8.w),
                        Container(
                          height: 40.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.itemColor,
                            ),
                            image: const DecorationImage(
                              image: AssetImage(AppImages.splash),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(width: 6.w),
                        SizedBox(
                          width: 86.w,
                          child: Text(
                            'chonromore ts'.toUpperCase(),
                            maxLines: 2,
                            style: Theme.of(context).textTheme.headline6?.
                            copyWith(
                              fontSize: 12.sp,
                              color: AppColors.itemColor,
                            ),
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: 28.h,
                              width: 28.w,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.itemColor,
                              ),
                              child: Center(
                                child: Text(
                                  '3-1',
                                  style: Theme.of(context).textTheme.subtitle1?.
                                  copyWith(
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              'Full Time',
                              maxLines: 2,
                              style: Theme.of(context).textTheme.headline6?.
                              copyWith(
                                fontSize: 12.sp,
                                color: AppColors.itemColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 8.w),
                        Container(
                          height: 40.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.itemColor,
                            ),
                            image: const DecorationImage(
                              image: AssetImage(AppImages.splash),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(width: 8.w),
                        SizedBox(
                          width: 86.w,
                          child: Text(
                            'chonromore type script'.toUpperCase(),
                            maxLines: 2,
                            style: Theme.of(context).textTheme.headline6?.
                            copyWith(
                              fontSize: 12.sp,
                              color: AppColors.itemColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    width: 360.w,
                    height: .2.h,
                    color: AppColors.itemColor,
                  ),
                  SizedBox(height: 12.h),
                  Padding(
                    padding: EdgeInsets.only(left: 12.w, right: 12.w),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Obx(
                        () => Row(
                          children: List.generate(
                            controller.tabs.length,
                            (index) => TabItem(
                              tabName: controller.tabs[index],
                              color: index == controller.selectedIndex.value
                                  ? AppColors.redSelectedColor
                                  : AppColors.itemColor,
                              onTap: () {
                                controller.changeSelectedIndex(index);
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Obx(
                () => controller.selectedPage.value,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

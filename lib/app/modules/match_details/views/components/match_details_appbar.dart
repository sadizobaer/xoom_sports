import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:xoom_sports/app/utilities/images.dart';
import 'package:xoom_sports/app/utilities/colors.dart';

class MatchDetailsAppbar extends StatelessWidget {
  const MatchDetailsAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}

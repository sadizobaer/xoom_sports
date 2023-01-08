import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xoom_sports/app/utilities/colors.dart';
import 'package:xoom_sports/app/utilities/custom_clip_path.dart';
import 'calender.dart';

class HeaderDateSection extends StatelessWidget {
  const HeaderDateSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}

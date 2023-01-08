import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xoom_sports/app/utilities/colors.dart';

class StatComponent extends StatelessWidget {
  final String leftScore, rightScore, title;
  final double leftPercent, rightPercent;
  const StatComponent({
    Key? key,
    required this.leftScore,
    required this.rightScore,
    required this.title,
    this.leftPercent = 0,
    this.rightPercent = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16.h),
        _buildComponentBody(),
        SizedBox(height: 8.h),
        _buildComponentValues(context),
      ],
    );
  }

  Row _buildComponentBody() {
    return Row(
        children: [
          SizedBox(width: 12.w),
          _buildLeftSide(),
          const Spacer(),
          _buildRightSide(),
          SizedBox(width: 12.w),
        ],
      );
  }

  Stack _buildRightSide() {
    return Stack(
          children: [
            Container(
              height: 16.h,
              width: 160.w,
              decoration: BoxDecoration(
                color: AppColors.matchDetailsHeaderColor.withOpacity(.15),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8.r),
                  bottomRight: Radius.circular(8.r),
                ),
              ),
            ),
            Positioned(
              child: Container(
                height: 16.h,
                width: 16 * rightPercent.w,
                decoration: BoxDecoration(
                  color: AppColors.redSelectedColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8.r),
                    bottomRight: Radius.circular(8.r),
                  ),
                ),
              ),
            ),
          ],
        );
  }

  Stack _buildLeftSide() {
    return Stack(
          children: [
            Container(
              height: 16.h,
              width: 160.w,
              decoration: BoxDecoration(
                color: AppColors.matchDetailsHeaderColor.withOpacity(.15),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.r),
                  bottomLeft: Radius.circular(8.r),
                ),
              ),
            ),
            Positioned(
              right: 0.w,
              child: Container(
                height: 16.h,
                width: 16 * leftPercent.w,
                decoration: BoxDecoration(
                  color: AppColors.bottomNavColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.r),
                    bottomLeft: Radius.circular(8.r),
                  ),
                ),
              ),
            ),
          ],
        );
  }

  Row _buildComponentValues(BuildContext context) {
    return Row(
        children: [
          SizedBox(width: 12.w),
          Text(
            leftScore,
            style: Theme.of(context).textTheme.headline6?.copyWith(
              fontSize: 12.sp,
              color: AppColors.bottomNavColor,
            ),
          ),
          const Spacer(),
          Text(
            title,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
              fontSize: 12.sp,
              color: AppColors.bottomNavColor,
            ),
          ),
          const Spacer(),
          Text(
            rightScore,
            style: Theme.of(context).textTheme.headline6?.copyWith(
              fontSize: 12.sp,
              color: AppColors.bottomNavColor,
            ),
          ),
          SizedBox(width: 12.w),
        ],
      );
  }
}

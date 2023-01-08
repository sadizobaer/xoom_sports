import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:xoom_sports/app/modules/match_details/views/components/tab_item.dart';
import 'package:xoom_sports/app/utilities/colors.dart';
import 'package:xoom_sports/app/utilities/custom_clip_path.dart';
import 'package:xoom_sports/app/utilities/images.dart';
import '../../controllers/match_details_controller.dart';

class MatchDetailsHeader extends GetView<MatchDetailsController> {
  const MatchDetailsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomClipPath(),
      child: Container(
        height: 130.h,
        width: 360.w,
        color: AppColors.bottomNavColor,
        padding: EdgeInsets.symmetric(vertical: 20.h),
        child: Column(
          children: [
            _buildHeaderScoreCard(context),
            SizedBox(height: 10.h),
            _buildDivider(),
            SizedBox(height: 12.h),
            _buildTabs(),
          ],
        ),
      ),
    );
  }

  Expanded _buildHeaderScoreCard(BuildContext context) {
    return Expanded(
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
              style: Theme.of(context).textTheme.headline6?.copyWith(
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
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          fontSize: 12.sp,
                        ),
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                'Full Time',
                maxLines: 2,
                style: Theme.of(context).textTheme.headline6?.copyWith(
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
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    fontSize: 12.sp,
                    color: AppColors.itemColor,
                  ),
            ),
          ),
        ],
      ),
    );
  }

  Container _buildDivider() {
    return Container(
      width: 360.w,
      height: .2.h,
      color: AppColors.itemColor,
    );
  }

  Padding _buildTabs() {
    return Padding(
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
    );
  }
}

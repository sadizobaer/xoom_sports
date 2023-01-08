import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xoom_sports/app/modules/match_details/views/components/info_fixture.dart';
import 'package:xoom_sports/app/modules/match_details/views/components/info_table.dart';
import 'package:xoom_sports/app/utilities/colors.dart';
import 'package:xoom_sports/app/utilities/images.dart';
import 'package:xoom_sports/app/utilities/custom_clip_path.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 12.h),
        Row(
          children: [
            SizedBox(width: 12.w),
            Icon(
              Icons.calendar_today_outlined,
              color: AppColors.bottomNavColor,
              size: 20.sp,
            ),
            SizedBox(width: 4.w),
            Text(
              '3 Dec 2020, 21:00',
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                fontSize: 13.sp,
                letterSpacing: .1,
              ),
            ),
            const Spacer(),
            const ImageIcon(
              AssetImage(AppImages.capacity),
              color: AppColors.bottomNavColor,
            ),
            SizedBox(width: 4.w),
            Text(
              '5000',
              style: Theme.of(context).textTheme.subtitle2?.copyWith(
                fontSize: 13.sp,
              ),
            ),
            SizedBox(width: 12.w),
          ],
        ),
        SizedBox(height: 8.h),
        ClipPath(
          clipper: CustomClipPath(),
          child: Container(
            width: 360.w,
            padding: EdgeInsets.fromLTRB(12.w, 20.h, 12.w, 30.h),
            color: AppColors.matchDetailsHeaderColor.withOpacity(.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Netherlands'.toUpperCase(),
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: AppColors.bottomNavColor,
                    letterSpacing: .1,
                  ),
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  height: 16.h,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const InfoFixture();
                    },
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  'United States'.toUpperCase(),
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: AppColors.bottomNavColor,
                    letterSpacing: .1,
                  ),
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  height: 16.h,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const InfoFixture();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 8.h),
        Padding(
          padding: EdgeInsets.only(left: 12.w),
          child: Text(
            'Table'.toUpperCase(),
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  fontSize: 13.sp,
                ),
          ),
        ),
        SizedBox(height: 4.h),
        ClipPath(
          clipper: CustomClipPath(),
          child: Container(
            //height: 150.h,
            width: 360.w,
            color: AppColors.matchDetailsHeaderColor.withOpacity(.1),
            padding: EdgeInsets.fromLTRB(12.w, 20.h, 12.w, 30.h),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 35.h,
                      width: 35.w,
                      decoration: const BoxDecoration(
                        color: AppColors.itemColor,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(AppImages.appLogo),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'World Cup',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        Text(
                          'World',
                          style: Theme.of(context).textTheme.subtitle1?.
                          copyWith(
                            color: AppColors.bottomNavColor.withOpacity(.5),
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Container(
                  width: 360.w,
                  height: .2.h,
                  color: AppColors.bottomNavColor,
                ),
                SizedBox(height: 4.h),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        '#',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Padding(
                        padding: EdgeInsets.only(left: 12.w),
                        child: Text(
                          'TEAM',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(
                          'P',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(
                          'GD',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(
                          'PTS',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.h),
                Container(
                  width: 360.w,
                  height: .2.h,
                  color: AppColors.bottomNavColor,
                ),
                SizedBox(height: 8.h),
                ListView.builder(
                  itemCount: 3,
                  padding: EdgeInsets.all(0.sp),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InfoTable(
                      index: index + 1,
                      p: 2,
                      gd: 4,
                      pts: 7,
                      flagUrl: AppImages.splash,
                      teamName: 'Netherlands',
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

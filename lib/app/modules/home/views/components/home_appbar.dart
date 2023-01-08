import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xoom_sports/app/utilities/images.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}

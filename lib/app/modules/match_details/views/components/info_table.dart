import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xoom_sports/app/utilities/images.dart';

class InfoTable extends StatelessWidget {
  final int index, p, gd, pts;
  final String flagUrl, teamName;
  const InfoTable({
    Key? key,
    required this.index,
    required this.p,
    required this.gd,
    required this.pts,
    required this.flagUrl,
    required this.teamName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 4.h),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Text(
                index.toString(),
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      fontSize: 11.sp,
                    ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Row(
                children: [
                  SizedBox(
                    height: 12.h,
                    width: 24.w,
                    child: Image.asset(
                      AppImages.splash,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    teamName,
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontSize: 12.sp,
                        ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Text(
                  p.toString(),
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontSize: 11.sp,
                      ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Text(
                  gd.toString(),
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontSize: 11.sp,
                      ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Text(
                  pts.toString(),
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontSize: 11.sp,
                      ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 4.h),
      ],
    );
  }
}

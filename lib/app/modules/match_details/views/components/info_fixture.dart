import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xoom_sports/app/utilities/images.dart';

class InfoFixture extends StatelessWidget {
  const InfoFixture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.w),
      child: Row(
        children: [
          SizedBox(
            height: 16.h, width: 32.w,
            child: Image.asset(AppImages.splash, fit: BoxFit.fill,),
          ),
          SizedBox(width: 6.w),
          Text('0-2', style: Theme.of(context).textTheme.subtitle2,),
          SizedBox(width: 6.w),
          SizedBox(
            height: 16.h, width: 32.w,
            child: Image.asset(AppImages.splash, fit: BoxFit.fill,),
          ),
        ],
      ),
    );
  }
}

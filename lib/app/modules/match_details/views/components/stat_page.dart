import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:xoom_sports/app/modules/match_details/views/components/stat_component.dart';
import 'package:xoom_sports/app/modules/match_details/controllers/match_details_controller.dart';

class StatPage extends GetView<MatchDetailsController> {
  const StatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 8.h),
        ListView.builder(
          padding: EdgeInsets.all(0.sp),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 12,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return const StatComponent(
              leftScore: '65',
              rightScore: '40',
              title: 'Possesion (%)',
              leftPercent: 6.5,
              rightPercent: 4,
            );
          },
        ),
        SizedBox(height: 30.h),
      ],
    );
  }
}

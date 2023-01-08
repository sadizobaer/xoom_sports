import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:xoom_sports/app/modules/match_details/views/components/match_details_appbar.dart';
import 'package:xoom_sports/app/modules/match_details/views/components/match_details_header.dart';
import 'package:xoom_sports/app/modules/match_details/views/components/match_details_tab_view.dart';
import 'package:xoom_sports/app/modules/match_details/views/components/tab_item.dart';
import 'package:xoom_sports/app/utilities/colors.dart';
import 'package:xoom_sports/app/utilities/images.dart';
import 'package:xoom_sports/app/utilities/custom_clip_path.dart';
import 'package:xoom_sports/app/modules/match_details/controllers/match_details_controller.dart';

class MatchDetailsView extends GetView<MatchDetailsController> {
  const MatchDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: const [
          /// match details appbar
          MatchDetailsAppbar(),
          /// match details header
          MatchDetailsHeader(),
          /// match details tab view
          MatchDetailsTabView(),
        ],
      ),
    );
  }
}

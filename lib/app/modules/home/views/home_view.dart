import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:xoom_sports/app/modules/home/views/components/calender.dart';
import 'package:xoom_sports/app/modules/home/views/components/header_date_section.dart';
import 'package:xoom_sports/app/modules/home/views/components/home_appbar.dart';
import 'package:xoom_sports/app/modules/home/views/components/home_body_section.dart';
import 'package:xoom_sports/app/utilities/colors.dart';
import 'package:xoom_sports/app/utilities/images.dart';
import 'package:xoom_sports/app/modules/home/controllers/home_controller.dart';
import 'package:xoom_sports/app/utilities/custom_clip_path.dart';
import 'components/home_item_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.homeScaffoldKey,
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: const [
          /// home page appbar section
          HomeAppbar(),
          /// header date picker calender
          HeaderDateSection(),
          /// home body section
          HomeBodySection(),
        ],
      ),
    );
  }
}

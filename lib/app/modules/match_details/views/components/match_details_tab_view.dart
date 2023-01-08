import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:xoom_sports/app/modules/match_details/controllers/match_details_controller.dart';

class MatchDetailsTabView extends GetView<MatchDetailsController> {
  const MatchDetailsTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Obx(
          () => controller.selectedPage.value,
        ),
      ),
    );
  }
}

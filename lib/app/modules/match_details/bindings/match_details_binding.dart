import 'package:get/get.dart';

import '../controllers/match_details_controller.dart';

class MatchDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MatchDetailsController>(
      () => MatchDetailsController(),
    );
  }
}

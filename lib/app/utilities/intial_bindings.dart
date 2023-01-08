import 'package:get/get.dart';
import '../modules/home/controllers/home_controller.dart';
import 'api_client.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    ApiClient.init();
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}

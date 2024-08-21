import 'package:get/get.dart';

import '../controllers/ads_controller.dart';

class AdsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdsController>(() => AdsController());
  }
}

import 'package:get/get.dart';

import '../controllers/profile_user_ads_controller.dart';

class ProfileUserAdsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileUserAdsController>(() => ProfileUserAdsController());
  }
}

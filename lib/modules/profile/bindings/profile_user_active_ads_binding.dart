import 'package:get/get.dart';

import '../controllers/profile_user_active_ads_controller.dart';

class ProfileUserActiveAdsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileUserActiveAdsController>(() => ProfileUserActiveAdsController());
  }
}

import 'package:get/get.dart';

import '../controllers/profile_user_inactive_ads_controller.dart';

class ProfileUserInActiveAdsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileUserInActiveAdsController>(() => ProfileUserInActiveAdsController());
  }
}

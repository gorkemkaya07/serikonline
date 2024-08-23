import 'package:get/get.dart';

import '../controllers/profile_user_info_controller.dart';

class ProfileUserInfoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileUserInfoController>(() => ProfileUserInfoController());
  }
}

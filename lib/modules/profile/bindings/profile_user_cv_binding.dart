import 'package:get/get.dart';

import '../controllers/profile_user_cv_controller.dart';

class ProfileUserCVBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileUserCVController>(() => ProfileUserCVController());
  }
}

import 'package:get/get.dart';

import '../controllers/profile_user_inactive_comments_controller.dart';

class ProfileUserInActiveCommentsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileUserInActiveCommentsController>(() => ProfileUserInActiveCommentsController());
  }
}

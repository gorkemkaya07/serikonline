import 'package:get/get.dart';

import '../controllers/profile_user_comments_controller.dart';

class ProfileUserCommentsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileUserCommentsController>(
        () => ProfileUserCommentsController());
  }
}

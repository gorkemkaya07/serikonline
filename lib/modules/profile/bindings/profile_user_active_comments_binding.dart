import 'package:get/get.dart';

import '../controllers/profile_user_active_comments_controller.dart';

class ProfileUserActiveCommentsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileUserActiveCommentsController>(() => ProfileUserActiveCommentsController());
  }
}

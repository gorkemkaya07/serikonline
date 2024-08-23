import 'package:get/get.dart';

import '../controllers/profile_contact_us_controller.dart';

class ProfileContactUsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileContactUsController>(() => ProfileContactUsController());
  }
}

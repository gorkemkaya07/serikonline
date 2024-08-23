import 'package:get/get.dart';

import '../controllers/profile_notification_settings_controller.dart';

class ProfileNotificationSettingsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileNotificationSettingsController>(
        () => ProfileNotificationSettingsController());
  }
}

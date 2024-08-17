import 'package:get/get.dart';
import 'package:serikonline/modules/home/controllers/home_controller.dart';

import '../widgets/bottom_nav_bar/bottom_nav_bar_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    // Sadece Bottom Navigation Bar'ın Controller'ı başlatılır
    Get.lazyPut<BottomNavBarWidgetController>(
        () => BottomNavBarWidgetController());
         Get.lazyPut<HomeController>(
        () => HomeController());
  }
}

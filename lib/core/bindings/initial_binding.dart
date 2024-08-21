import 'package:get/get.dart';
import '../widgets/bottom_nav_bar/bottom_nav_bar_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavBarWidgetController>(
        () => BottomNavBarWidgetController());
  }
}

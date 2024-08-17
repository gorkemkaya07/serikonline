import 'package:get/get.dart';

class BottomNavBarWidgetController extends GetxController {
  var currentIndex = 0.obs;

  void changePage(int index) {
    currentIndex.value = index;
  }
}

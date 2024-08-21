import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:serikonline/core/theme/app_colors.dart';
import 'bottom_nav_bar_controller.dart';

class BottomNavBarWidget extends GetView<BottomNavBarWidgetController> {
  const BottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: '/home', // İlk sayfa olarak 'home' sayfasını ayarlayın
        onGenerateRoute: controller.onGenerateRoute,
      ),
      bottomNavigationBar: Obx(() {
        return AnimatedBottomNavigationBar(
          icons: const [
            Icons.home,
            Icons.article,
            Icons.campaign,
            Icons.info,
            Icons.person
          ],
          activeIndex: controller.currentIndex.value,
          gapLocation: GapLocation.none,
          onTap: (index) {
            controller.changePage(index);            
          },
          activeColor: AppColors.primary,
          inactiveColor:AppColors.normalgray,
        );
      }),
    );
  }
}

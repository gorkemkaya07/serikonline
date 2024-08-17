import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:serikonline/core/theme/app_colors.dart';
import '../../../modules/ads/views/ads_view.dart';
import '../../../modules/home/views/home_view.dart';
import '../../../modules/info/views/info_view.dart';
import '../../../modules/news/views/news_view.dart';
import '../../../modules/profile/views/profile_view.dart';
import '../../theme/app_theme.dart';
import 'bottom_nav_bar_controller.dart';

class BottomNavBarWidget extends GetView<BottomNavBarWidgetController> {
  const BottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:  AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Column(
            children: [
              Image.asset('assets/images/app_logo.png', width: 35, height: 35),
              const Text("SERIK ONLINE", style: AppTheme.appBarTitle)
            ],
          ),
        ),
      body: Obx(() {
        return IndexedStack(
          index: controller.currentIndex.value,
          children: const [
            HomeView(),
            NewsView(),
            AdsView(),
            InfoView(),
            ProfileView(),
          ],
        );
      }),
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
          onTap: controller.changePage,
          activeColor: AppColors.primary,
          inactiveColor: AppColors.darkgray,
        );
      }),
    );
  }
}

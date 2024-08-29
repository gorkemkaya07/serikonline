import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../modules/ads/bindings/ads_binding.dart';
import '../../../modules/ads/views/ads_view.dart';
import '../../../modules/home/bindings/home_binding.dart';
import '../../../modules/home/views/home_view.dart';
import '../../../modules/info/bindings/info_binding.dart';
import '../../../modules/info/views/info_view.dart';
import '../../../modules/news/bindings/news_binding.dart';
import '../../../modules/news/views/news_view.dart';
import '../../../modules/profile/bindings/profile_binding.dart';
import '../../../modules/profile/views/profile_view.dart';

class BottomNavBarWidgetController extends GetxController {
  var currentIndex = 0.obs;
  final List<String> pages = ['/home', '/news', '/ads', '/info', '/profile'];
  var counter = 0.obs;
  void changePage(int index) {
    currentIndex.value = index;
    Get.offAllNamed(pages[index], id: 5);
  }

  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return GetPageRoute(
            settings: settings,
            page: () => const HomeView(),
            binding: HomeBinding(),
            transition: Transition.noTransition);
      case '/news':
        return GetPageRoute(
            settings: settings,
            page: () => const NewsView(),
            binding: NewsBinding(),
            transition: Transition.noTransition);
      case '/ads':
        return GetPageRoute(
            settings: settings,
            page: () => const AdsView(),
            binding: AdsBinding(),
            transition: Transition.noTransition);
      case '/info':
        return GetPageRoute(
            settings: settings,
            page: () => const InfoView(),
            binding: InfoBinding(),
            transition: Transition.noTransition);
      case '/profile':
        return GetPageRoute(
            settings: settings,
            // ignore: prefer_const_constructors
            page: () => ProfileView(),
            binding: ProfileBinding(),
            transition: Transition.noTransition);
      default:
        return null;
    }
  }
}

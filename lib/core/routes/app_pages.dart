import 'package:get/get.dart';
import 'package:serikonline/core/bindings/initial_binding.dart';
import 'package:serikonline/modules/ads/bindings/ads_binding.dart';
import 'package:serikonline/modules/ads/views/ads_view.dart';
import 'package:serikonline/modules/info/bindings/info_binding.dart';
import 'package:serikonline/modules/info/views/info_view.dart';
import 'package:serikonline/modules/profile/bindings/profile_binding.dart';
import 'package:serikonline/modules/profile/views/profile_view.dart';
import '../../modules/home/bindings/home_binding.dart';
import '../../modules/home/views/home_view.dart';
import '../../modules/news/bindings/news_binding.dart';
import '../../modules/news/views/news_view.dart';
import '../widgets/bottom_nav_bar/bottom_nav_bar_widget.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => const BottomNavBarWidget(), // İlk sayfa BottomNavBarWidget
      binding: InitialBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(), // Her sayfa kendi binding'ine sahip
    ),
    GetPage(
      name: AppRoutes.NEWS,
      page: () => const NewsView(),
      binding: NewsBinding(),
    ),
    GetPage(
      name: AppRoutes.ADS,
      page: () => const AdsView(),
      binding: AdsBinding(),
    ),
    GetPage(
      name: AppRoutes.INFO,
      page: () => const InfoView(),
      binding: InfoBinding(),
    ),
    GetPage(
      name: AppRoutes.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
  ];
}

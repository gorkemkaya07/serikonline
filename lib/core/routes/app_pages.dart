import 'package:get/get.dart';
import 'package:serikonline/core/bindings/initial_binding.dart';
import 'package:serikonline/modules/ads/bindings/ads_binding.dart';
import 'package:serikonline/modules/ads/views/ads_view.dart';
import 'package:serikonline/modules/home/bindings/home_binding.dart';
import 'package:serikonline/modules/info/bindings/info_binding.dart';
import 'package:serikonline/modules/info/views/info_view.dart';
import 'package:serikonline/modules/news/bindings/news_binding.dart';
import 'package:serikonline/modules/profile/bindings/profile_binding.dart';
import 'package:serikonline/modules/profile/bindings/profile_user_ads_binding.dart';
import 'package:serikonline/modules/profile/views/profile_user_ads_view.dart';
import 'package:serikonline/modules/profile/views/profile_user_info_view.dart';
import 'package:serikonline/modules/profile/views/profile_view.dart';
import '../../modules/home/views/home_view.dart';
import '../../modules/news/views/news_view.dart';
import '../../modules/profile/bindings/profile_contact_us_binding.dart';
import '../../modules/profile/bindings/profile_notification_settings_binding.dart';
import '../../modules/profile/bindings/profile_user_comments_binding.dart';
import '../../modules/profile/bindings/profile_user_cv_binding.dart';
import '../../modules/profile/bindings/profile_user_info_binding.dart';
import '../../modules/profile/views/profile_contact_us_view.dart';
import '../../modules/profile/views/profile_notification_settings_view.dart';
import '../../modules/profile/views/profile_user_comments_view.dart';
import '../../modules/profile/views/profile_user_cv_view.dart';
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
      binding: HomeBinding(),
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
    GetPage(
      name: AppRoutes.PROFILE_USER_INFO,
      page: () =>   ProfileUserInfoView(),
      binding: ProfileUserInfoBinding(),
    ),
    GetPage(
      name: AppRoutes.PROFILE_USER_ADS,
      page: () => const ProfileUserAdsView(),
      binding: ProfileUserAdsBinding(),
    ),
    GetPage(
      name: AppRoutes.PROFILE_USER_CV,
      page: () => const ProfileUserCvView(),
      binding: ProfileUserCVBinding(),
    ),
    GetPage(
      name: AppRoutes.PROFILE_USER_COMMENTS,
      page: () => const ProfileUserCommentsView(),
      binding: ProfileUserCommentsBinding(),
    ),
    GetPage(
      name: AppRoutes.PROFILE_NOTIFICATION_SETTINGS,
      page: () => const ProfileNotificationSettingsView(),
      binding: ProfileNotificationSettingsBinding(),
    ),
    GetPage(
      name: AppRoutes.PROFILE_CONTACT_US,
      page: () => const ProfileContactUsView(),
      binding: ProfileContactUsBinding(),
    ),
  ];
}

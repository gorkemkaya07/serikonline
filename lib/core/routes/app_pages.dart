import 'package:get/get.dart';
import 'package:serikonline/core/bindings/initial_binding.dart';
import 'package:serikonline/modules/ads/bindings/ads_binding.dart';
import 'package:serikonline/modules/ads/views/ads_view.dart';
import 'package:serikonline/modules/home/bindings/home_binding.dart';
import 'package:serikonline/modules/info/bindings/info_binding.dart';
import 'package:serikonline/modules/info/bindings/info_bus_prices_binding.dart';
import 'package:serikonline/modules/info/bindings/info_currency_exchange_rates_binding.dart';
import 'package:serikonline/modules/info/bindings/info_market_prices_binding.dart';
import 'package:serikonline/modules/info/bindings/info_on_duty_pharmacy_binding.dart';
import 'package:serikonline/modules/info/views/info_bus_prices_view.dart';
import 'package:serikonline/modules/info/views/info_currency_exchange_rates_view.dart';
import 'package:serikonline/modules/info/views/info_market_prices_view.dart';
import 'package:serikonline/modules/info/views/info_on_duty_pharmacy_view.dart';
import 'package:serikonline/modules/info/views/info_view.dart';
import 'package:serikonline/modules/news/bindings/news_binding.dart';
import 'package:serikonline/modules/news/bindings/news_detail_binding.dart';
import 'package:serikonline/modules/news/views/news_detail_view.dart';
import 'package:serikonline/modules/profile/bindings/profile_binding.dart';
import 'package:serikonline/modules/profile/bindings/profile_user_ads_binding.dart';
import 'package:serikonline/modules/profile/views/profile_user_active_comments_view.dart';
import 'package:serikonline/modules/profile/views/profile_user_ads_view.dart';
import 'package:serikonline/modules/profile/views/profile_user_inactive_comments_view.dart';
import 'package:serikonline/modules/profile/views/profile_user_info_view.dart';
import 'package:serikonline/modules/profile/views/profile_view.dart';
import '../../modules/home/views/home_view.dart';
import '../../modules/news/views/news_view.dart';
import '../../modules/profile/bindings/profile_contact_us_binding.dart';
import '../../modules/profile/bindings/profile_user_active_ads_binding.dart';
import '../../modules/profile/bindings/profile_user_active_comments_binding.dart';
import '../../modules/profile/bindings/profile_user_comments_binding.dart';
import '../../modules/profile/bindings/profile_user_inactive_ads_binding.dart';
import '../../modules/profile/bindings/profile_user_inactive_comments_binding.dart';
import '../../modules/profile/bindings/profile_user_info_binding.dart';
import '../../modules/profile/views/profile_contact_us_view.dart';
import '../../modules/profile/views/profile_user_active_ads_view.dart';
import '../../modules/profile/views/profile_user_comments_view.dart';
import '../../modules/profile/views/profile_user_inactive_ads_view.dart';
import '../widgets/bottom_nav_bar/bottom_nav_bar_widget.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => const BottomNavBarWidget(), // İlk sayfa BottomNavBarWidget
      binding: InitialBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: AppRoutes.NEWS,
      page: () => const NewsView(),
      binding: NewsBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: AppRoutes.ADS,
      page: () => const AdsView(),
      binding: AdsBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: AppRoutes.INFO,
      page: () => const InfoView(),
      binding: InfoBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: AppRoutes.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: AppRoutes.PROFILE_USER_INFO,
      page: () => ProfileUserInfoView(),
      binding: ProfileUserInfoBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: AppRoutes.PROFILE_USER_ADS,
      page: () => const ProfileUserAdsView(),
      binding: ProfileUserAdsBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: AppRoutes.PROFILE_USER_COMMENTS,
      page: () => const ProfileUserCommentsView(),
      binding: ProfileUserCommentsBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: AppRoutes.PROFILE_CONTACT_US,
      page: () => const ProfileContactUsView(),
      binding: ProfileContactUsBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: AppRoutes.PROFILE_USER_ACTIVE_COMMENTS,
      page: () => const ProfileUserActiveCommentsView(),
      binding: ProfileUserActiveCommentsBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: AppRoutes.PROFILE_USER_INACTIVE_COMMENTS,
      page: () => const ProfileUserInActiveCommentsView(),
      binding: ProfileUserInActiveCommentsBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: AppRoutes.PROFILE_USER_ACTIVE_ADS,
      page: () => const ProfileUserActiveAdsView(),
      binding: ProfileUserActiveAdsBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: AppRoutes.PROFILE_USER_INACTIVE_ADS,
      page: () => const ProfileUserInActiveAdsView(),
      binding: ProfileUserInActiveAdsBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: AppRoutes.INFO_ON_DUTY_PHARMACY,
      page: () => const InfoOnDutyPharmacyView(),
      binding: InfoOnDutyPharmacyBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: AppRoutes.INFO_MARKET_PRICES,
      page: () => const InfoMarketPricesView(),
      binding: InfoMarketPricesBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: AppRoutes.INFO_CURRENCY_EXCHANGE_RATES,
      page: () => InfoCurrencyExchangeRatesView(),
      binding: InfoCurrencyExchangeRatesBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: AppRoutes.INFO_BUS_PRICES,
      page: () => const InfoBusPricesView(),
      binding: InfoBusPricesBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: AppRoutes.NEWS_DETAIL,
      page: () => const NewsDetailView(),
      binding: NewsDetailBinding(),
      transition: Transition.cupertino,
    ),
  ];
}

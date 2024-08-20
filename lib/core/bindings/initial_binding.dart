import 'package:get/get.dart';
import 'package:serikonline/modules/ads/controllers/ads_controller.dart';
import 'package:serikonline/modules/home/controllers/home_controller.dart';
import 'package:serikonline/modules/info/controllers/info_controller.dart';
import 'package:serikonline/modules/news/controllers/news_controller.dart';

import '../../modules/profile/controllers/profile_controller.dart';
import '../widgets/bottom_nav_bar/bottom_nav_bar_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {     
    Get.lazyPut<BottomNavBarWidgetController>(() => BottomNavBarWidgetController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<NewsController>(() => NewsController());
    Get.lazyPut<AdsController>(() => AdsController());
    Get.lazyPut<InfoController>(() => InfoController());
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}

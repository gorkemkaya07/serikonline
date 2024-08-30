import 'package:get/get.dart';

import '../controllers/sale_ads_controller.dart';

class SaleAdsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SaleAdsController>(() => SaleAdsController());
  }
}

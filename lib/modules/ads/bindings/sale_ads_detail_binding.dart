import 'package:get/get.dart';

import '../controllers/sale_ads_detail_controller.dart';

class SaleAdsDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SaleAdsDetailController>(() => SaleAdsDetailController());
  }
}

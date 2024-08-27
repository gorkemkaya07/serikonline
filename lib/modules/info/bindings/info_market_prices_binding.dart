import 'package:get/get.dart';

import '../controllers/info_market_prices_controller.dart';

class InfoMarketPricesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InfoMarketPricesController>(() => InfoMarketPricesController());
  }
}

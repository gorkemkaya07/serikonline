import 'package:get/get.dart';

import '../controllers/info_bus_prices_controller.dart';

class InfoBusPricesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InfoBusPricesController>(() => InfoBusPricesController());
  }
}

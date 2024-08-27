import 'package:get/get.dart';

import '../controllers/info_currency_exchange_rates_controller.dart';

class InfoCurrencyExchangeRatesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InfoCurrencyExchangeRatesController>(() => InfoCurrencyExchangeRatesController());
  }
}

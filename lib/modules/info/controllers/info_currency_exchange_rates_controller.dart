import 'package:get/get.dart';

class InfoCurrencyExchangeRatesController extends GetxController {
  var visibility = true.obs;

  changeVisibility() {
    visibility.value = !visibility.value;
  }
}

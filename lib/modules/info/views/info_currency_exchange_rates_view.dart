import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/core/widgets/custom_app_bar/custom_app_bar_widget.dart';

import '../controllers/info_currency_exchange_rates_controller.dart';

class InfoCurrencyExchangeRatesView extends GetView<InfoCurrencyExchangeRatesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(),
      body: SafeArea(
        child: Text('InfoCurrencyExchangeRatesController'),
      ),
    );
  }
}

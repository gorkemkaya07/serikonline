import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/core/widgets/custom_app_bar/custom_app_bar_widget.dart';

import '../controllers/info_bus_prices_controller.dart';

class InfoBusPricesView extends GetView<InfoBusPricesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(),
      body: SafeArea(
        child: Text('ProfileInfoBusPricesController'),
      ),
    );
  }
}

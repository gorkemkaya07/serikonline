import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/core/widgets/menu_card_list/menu_card_list_widget.dart';
import '../../../core/widgets/custom_app_bar/custom_app_bar_widget.dart';
import '../controllers/ads_controller.dart';

class AdsView extends GetView<AdsController> {
  const AdsView({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        appBar: const CustomAppBarWidget(),
        body: Column(
          children: [
              MenuCardListWidget(menuList: controller.list, route: '/test')
          ],
        ));
  }
}

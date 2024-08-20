import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/widgets/custom_app_bar/custom_app_bar_widget.dart';
import '../controllers/ads_controller.dart';

class AdsView extends GetView<AdsController> {
  const AdsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomAppBarWidget(),
        body: SafeArea(child: Text('AdsController')));
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/ads_controller.dart';

class HomeView extends GetView<AdsController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('AdsPage')),
        body: const SafeArea(child: Text('AdsController')));
  }
}

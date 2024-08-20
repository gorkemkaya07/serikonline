import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/core/widgets/custom_app_bar/custom_app_bar_widget.dart';
import '../controllers/info_controller.dart';

class InfoView extends GetView<InfoController> {
  const InfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomAppBarWidget(),
        body:  SafeArea(child: Text('InfoViewController')));
  }
}

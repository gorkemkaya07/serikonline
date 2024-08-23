import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/core/widgets/custom_app_bar/custom_app_bar_widget.dart';

import '../controllers/profile_contact_us_controller.dart';

class ProfileContactUsView extends GetView<ProfileContactUsController> {
  const ProfileContactUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomAppBarWidget(),
        body: SafeArea(child: Text('ProfileContactUsController')));
  }
}

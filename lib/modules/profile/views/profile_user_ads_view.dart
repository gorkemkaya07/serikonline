import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/core/widgets/custom_app_bar/custom_app_bar_widget.dart';

import '../controllers/profile_user_ads_controller.dart';

class ProfileUserAdsView extends GetView<ProfileUserAdsController> {
  const ProfileUserAdsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomAppBarWidget(),
        body: Center(child: Text('ProfileUserAdsController')));
  }
}

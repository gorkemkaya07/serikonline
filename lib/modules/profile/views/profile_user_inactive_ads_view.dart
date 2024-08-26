import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/core/widgets/custom_app_bar/custom_app_bar_widget.dart';
import 'package:serikonline/modules/profile/widgets/user_ads_card/user_ads_card_widget.dart';

import '../controllers/profile_user_inactive_ads_controller.dart';

class ProfileUserInActiveAdsView extends GetView<ProfileUserInActiveAdsController> {
  const ProfileUserInActiveAdsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(),
      body: UserAdsCardWidget(adsList: controller.adsList),
    );
  }
}

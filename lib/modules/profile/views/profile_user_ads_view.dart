import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/widgets/custom_app_bar/custom_app_bar_widget.dart';
import '../controllers/profile_user_ads_controller.dart';
import '../widgets/user_ads_card/user_ads_card_widget.dart';

class ProfileUserAdsView extends GetView<ProfileUserAdsController> {
  const ProfileUserAdsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBarWidget(),
        body: UserAdsCardWidget(adsList: controller.adsList));
  }
}

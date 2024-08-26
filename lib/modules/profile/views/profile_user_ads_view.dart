import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/modules/profile/widgets/profile_menu_list/profile_menu_list_widget.dart';
import '../../../core/widgets/custom_app_bar/custom_app_bar_widget.dart';
import '../controllers/profile_user_ads_controller.dart';

class ProfileUserAdsView extends GetView<ProfileUserAdsController> {
  const ProfileUserAdsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(),
      body: Column(
        children: [ProfileMenuListWidget(profileMenuList: controller.profileMenuList)],
      ),
    );
  }
}

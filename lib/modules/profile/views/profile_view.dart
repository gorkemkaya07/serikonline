import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/core/widgets/custom_app_bar/custom_app_bar_widget.dart';
import 'package:serikonline/core/widgets/custom_divider/custom_divider_widget.dart';
import '../controllers/profile_controller.dart';
import '../widgets/profile_menu_list/profile_menu_list_widget.dart';
import '../widgets/user_info_profile_picture/user_info_profile_picture_widget.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBarWidget(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const UserInfoProfilePictureWidget(),
            const CustomDividerWidget(),
            ProfileMenuListWidget(profileMenuList: controller.profileMenuList)
          ],
        ));
  }
}

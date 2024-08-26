import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/core/widgets/custom_app_bar/custom_app_bar_widget.dart';
import '../controllers/profile_user_comments_controller.dart';
import '../widgets/profile_menu_list/profile_menu_list_widget.dart';

class ProfileUserCommentsView extends GetView<ProfileUserCommentsController> {
  const ProfileUserCommentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBarWidget(),
        body: Column(children: [
          ProfileMenuListWidget(profileMenuList: controller.profileMenuList)
        ]));
  }
}

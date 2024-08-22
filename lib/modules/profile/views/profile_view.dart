import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/core/theme/app_theme.dart';
import 'package:serikonline/core/widgets/custom_app_bar/custom_app_bar_widget.dart';
import 'package:serikonline/core/widgets/custom_divider/custom_divider_widget.dart';
import '../controllers/profile_controller.dart';
import '../widgets/user_info_profile_picture/user_info_profile_picture_widget.dart';

class ProfileView extends GetView<ProfileController> {
  ProfileView({super.key});
  final List userInfoList = [
    'Kullanıcı Bilgilerim',
    'İlanlarım',
    'CV Bilgilerim',
    'Yorumlarım',
    'Bildirim Ayarları',
    'Bize Ulaşın'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBarWidget(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const UserInfoProfilePictureWidget(),
            const CustomDividerWidget(),
            Expanded(
              child: ListView.builder(
                itemCount: userInfoList.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20),
                        child: Text(
                          userInfoList[index],
                          style: AppTheme.userInfo,
                        ),
                      ),
                      const CustomDividerWidget()
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

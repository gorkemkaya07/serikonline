import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/custom_divider/custom_divider_widget.dart';
import '../../../../data/models/profile_menu_model.dart';

class ProfileMenuListWidget extends StatelessWidget {
  const ProfileMenuListWidget({
    super.key,
    required this.profileMenuList,
  });

  final List<ProfileMenuModel> profileMenuList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: profileMenuList.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () => Get.toNamed(profileMenuList[index].route),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
                child: Text(
                  profileMenuList[index].title,
                  style: AppTheme.userInfo,
                ),
              ),
              const CustomDividerWidget()
            ],
          ),
        ),
      ),
    );
  }
}

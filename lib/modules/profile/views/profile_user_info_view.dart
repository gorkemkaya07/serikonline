import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/core/theme/app_colors.dart';
import 'package:serikonline/core/theme/app_theme.dart';
import 'package:serikonline/core/widgets/custom_app_bar/custom_app_bar_widget.dart';

import '../../../core/widgets/custom_image/custom_image_widget.dart';
import '../controllers/profile_user_info_controller.dart';

class ProfileUserInfoView extends GetView<ProfileUserInfoController> {
  ProfileUserInfoView({super.key});
  final userInfo = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBarWidget(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: CustomImageWidget(
                    imgUrl: 'https://i.pinimg.com/736x/8b/16/7a/8b167af653c2399dd93b952a48740620.jpg',
                    sizeWidth: 100,
                    sizeHeight: 100,
                    sizeBorderRadius: 13),
              ),
              const CustomTextField(title: 'Ad'),
              const CustomTextField(title: 'Soyad'),
              const CustomTextField(title: 'Telefon Numarası'),
              const CustomTextField(title: 'Doğum Tarihi'),
              CustomButton(
                  text: 'Kaydet',
                  func: () {
                    Get.back();
                  }),
            ],
          ),
        ));
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.func,
    required this.text,
  });
  final VoidCallback func;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: InkWell(
        onTap: func,
        child: Container(
          width: Get.width,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: AppColors.primary,
              boxShadow: [BoxShadow(offset: const Offset(0, 4), blurRadius: 30, color: Colors.black.withOpacity(.1), spreadRadius: 5)]),
          child: Center(
            child: Text(
              text,
              style: AppTheme.buttonText,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String title;
  const CustomTextField({
    super.key,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: AppTheme.textFieldTitle),
          const SizedBox(height: 5),
          TextField(
            decoration: AppTheme.textFieldDecoration,
          ),
        ],
      ),
    );
  }
}

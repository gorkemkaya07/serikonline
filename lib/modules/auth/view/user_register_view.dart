import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/core/theme/app_colors.dart';
import 'package:serikonline/core/theme/app_theme.dart';
import 'package:serikonline/core/widgets/custom_app_bar/custom_app_bar_widget.dart';

import '../controller/user_register_controller.dart';

class UserRegisterView extends GetView<UserRegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBarWidget(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Obx(() => Center(
                    child: InkWell(
                      onTap: controller.pickImage,
                      child: Stack(children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.grey.shade300,
                          backgroundImage: controller.imageFile.value != null ? FileImage(controller.imageFile.value!) : null,
                          child: controller.imageFile.value == null
                              ? const Icon(
                                  Icons.person,
                                  size: 60,
                                  color: Colors.white,
                                )
                              : null,
                        ),
                        // Kamera ikonu ve tıklama fonksiyonu
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.primary,
                            ),
                            child: const Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ]),
                    ),
                  )),
              const Text('Ad', style: AppTheme.cardTitle),
              const SizedBox(height: 8),
              TextField(decoration: AppTheme.textFieldDecoration.copyWith(hintText: 'Adınızı girin')),
              const SizedBox(height: 16),
              const Text('Soyad', style: AppTheme.cardTitle),
              const SizedBox(height: 8),
              TextField(decoration: AppTheme.textFieldDecoration.copyWith(hintText: 'Soyınızı girin')),
              const SizedBox(height: 16),
              const Text('Mail Adresi', style: AppTheme.cardTitle),
              const SizedBox(height: 8),
              TextField(decoration: AppTheme.textFieldDecoration.copyWith(hintText: 'example@domain.com')),
              const SizedBox(height: 16),
              const Text('Parola', style: AppTheme.cardTitle),
              const SizedBox(height: 8),
              TextField(decoration: AppTheme.textFieldDecoration.copyWith(hintText: 'Parolanızı girin')),
              const SizedBox(height: 16),
              const Text('Parola Tekrarı', style: AppTheme.cardTitle),
              const SizedBox(height: 8),
              TextField(decoration: AppTheme.textFieldDecoration.copyWith(hintText: 'Parolanızı girin')),
              const SizedBox(height: 16),
              const Text('Doğum Tarihi', style: AppTheme.cardTitle),
              const SizedBox(height: 8),
              TextField(decoration: AppTheme.textFieldDecoration.copyWith(hintText: 'Parolanızı girin')),
              const SizedBox(height: 16),
              const Text('Cinsiyet', style: AppTheme.cardTitle),
              const SizedBox(height: 8),
              Obx(
                () => Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.shade200,
                  ),
                  child: Row(
                    children: [
                      _buildToggleButton('Erkek', 0, controller),
                      _buildToggleButton('Kadın', 1, controller),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ));
  }
}

Widget _buildToggleButton(String text, int index, dynamic controller) {
  bool isSelected = controller.selectedIndex.value == index; // Seçili buton kontrolü
  return Expanded(
    child: GestureDetector(
      onTap: () {
        controller.updateIndex(index); // Seçili indeks güncelleniyor
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary : Colors.transparent,
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(index == 0 ? 30 : 30),
            right: Radius.circular(index == 1 ? 30 : 30),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.grey.shade700,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
  );
}

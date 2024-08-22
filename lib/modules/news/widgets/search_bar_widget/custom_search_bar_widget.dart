import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/theme/app_theme.dart';

class CustomSearchBarWidget extends StatelessWidget {
  const CustomSearchBarWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
      child: SizedBox(
        width: Get.width,
        child: TextField(
          decoration: AppTheme.textFieldDecoration.copyWith(
            hintText: 'Haber ara',
            contentPadding:
                const EdgeInsets.only(left: 10), // Sol iç padding ayarı
            suffixIcon: const Icon(Icons.search), // İkonu en sağa taşıdık
          ),
        ),
      ),
    );
  }
}

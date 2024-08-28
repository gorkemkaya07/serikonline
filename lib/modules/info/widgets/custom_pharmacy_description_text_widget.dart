import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_theme.dart';

class CustomPharmacyDescriptionTextWidget extends StatelessWidget {
  const CustomPharmacyDescriptionTextWidget({
    super.key,
    required this.redText,
    required this.blackText,
  });
  final String redText;
  final String blackText;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: redText,
        style: AppTheme.cardDescription.copyWith(color: AppColors.lightRed, fontWeight: FontWeight.w500),
        children: <TextSpan>[
          TextSpan(
            text: blackText,
            style: AppTheme.cardDescription.copyWith(color: AppColors.darkgray, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}

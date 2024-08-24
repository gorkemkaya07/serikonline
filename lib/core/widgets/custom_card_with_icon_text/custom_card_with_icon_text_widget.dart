import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_theme.dart';

class CustomCardWithIconTextWidget extends StatelessWidget {
  const CustomCardWithIconTextWidget({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Icon(icon, size: 18, color: AppColors.darkgray),
        const SizedBox(width: 4),
        Text(text, style: AppTheme.cardDescription),
      ],
    );
  }
}

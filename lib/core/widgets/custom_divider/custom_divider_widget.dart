import 'package:flutter/material.dart';
import 'package:serikonline/core/theme/app_colors.dart';

class CustomDividerWidget extends StatelessWidget {
  const CustomDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: AppColors.lightgray,
      height: 2,
      thickness: 1.5,
    );
  }
}
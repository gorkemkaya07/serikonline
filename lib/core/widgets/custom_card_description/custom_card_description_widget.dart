import 'package:flutter/material.dart';
import 'package:serikonline/core/theme/app_colors.dart';

import '../../theme/app_theme.dart';

class CustomCardDescription extends StatelessWidget {
  const CustomCardDescription({
    super.key,
    required this.description,
  });
  final String description;
  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: AppTheme.cardDescription.copyWith(color:AppColors.darkgray),
    );
  }
}

import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';

class CustomCardTitle extends StatelessWidget {
  const CustomCardTitle({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: AppTheme.cardTitle,
    );
  }
}

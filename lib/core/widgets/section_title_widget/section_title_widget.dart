import 'package:flutter/material.dart';
import 'package:serikonline/core/theme/app_theme.dart';

class SectionTitleWidget extends StatelessWidget {
  final String title;

  const SectionTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20),
      child: Text(
        title,
        style: AppTheme.sectionTitle,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/core/theme/app_theme.dart';

class SectionTitleWidget extends StatelessWidget {
  final String title;
  final bool showAll;
  final String? route;
  const SectionTitleWidget({
    super.key,
    required this.title,
    required this.showAll,
    this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTheme.sectionTitle,
        ),
        if (showAll)
          TextButton(
            style: TextButton.styleFrom(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                padding: const EdgeInsets.all(0),
                minimumSize: Size.zero),
            child: const Text(
              "Hepsini göster",
              style: AppTheme.sectionPrimaryColorSubtitle,
            ),
            onPressed: () => Get.toNamed(
              '/$route',
              id: 1
            ),
          ),
      ],
    );
  }
}

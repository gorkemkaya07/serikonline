import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_theme.dart';

class CustomPharmacyTableRowWidget extends StatelessWidget {
  const CustomPharmacyTableRowWidget({super.key, required this.rowText1, required this.rowText2});
  final String rowText1;
  final String rowText2;
  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: AppColors.normalgray.withOpacity(.5)),
      children: [
        TableRow(
          children: [
            _buildPharmacyRowCell(name: rowText1),
            _buildPharmacyRowCell(name: rowText2),
          ],
        ),
      ],
    );
  }
}

Widget _buildPharmacyRowCell({required String name}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      name,
      style: AppTheme.cardDescription.copyWith(color: AppColors.darkgray, fontWeight: FontWeight.w500),
    ),
  );
}

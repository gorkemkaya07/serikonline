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
      columnWidths: const {
        0: FlexColumnWidth(1),
        1: FlexColumnWidth(1.5),
        2: FlexColumnWidth(1.5),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      border: TableBorder.all(color: AppColors.normalgray.withOpacity(.5)),
      children: [
        TableRow(
          children: [
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Gül Eczanesi',
                  style: AppTheme.cardDescription.copyWith(color: AppColors.darkgray),
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Cumhuriyet Mahallesi, Hürriyet Caddesi, Akıl Apt. No:13/a Serik/Antalya',
                  style: AppTheme.cardDescription.copyWith(color: AppColors.darkgray),
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '0 (242) 712-58-85',
                  style: AppTheme.cardDescription.copyWith(color: AppColors.darkgray),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
 
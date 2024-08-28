import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_theme.dart';

class CustomBusPricesTableHeaderWidget extends StatelessWidget {
  const CustomBusPricesTableHeaderWidget({
    super.key,
    required this.textRow1,
    required this.textRow2,
    required this.textRow3,
    required this.textRow4,
    required this.textRow5,
  });

  final String textRow1;
  final String textRow2;
  final String textRow3;
  final String textRow4;
  final String textRow5;

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: Colors.white),
      columnWidths: const {
        0: FlexColumnWidth(1.5),
        1: FlexColumnWidth(1),
        2: FlexColumnWidth(1.5),
        3: FlexColumnWidth(1),
        4: FlexColumnWidth(1),
      },
      children: [
        TableRow(decoration: const BoxDecoration(color: AppColors.navyBlue), children: [
          TableCell(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                textRow1,
                style: AppTheme.cardTitle.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          TableCell(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                textRow2,
                style: AppTheme.cardTitle.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          TableCell(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                textRow3,
                style: AppTheme.cardTitle.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          TableCell(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                textRow4,
                style: AppTheme.cardTitle.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          TableCell(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                textRow5,
                style: AppTheme.cardTitle.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ])
      ],
    );
  }
}

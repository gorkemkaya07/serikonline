import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_theme.dart';

class CustomCurrencyExchangeRatesTableHeaderWidget extends StatelessWidget {
  const CustomCurrencyExchangeRatesTableHeaderWidget({
    super.key,
    required this.rowText1,
    required this.rowText2,
    required this.rowText3,
  });

  final String rowText1;
  final String rowText2;
  final String rowText3;

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: Colors.white),
      columnWidths: const {
        0: FlexColumnWidth(1),
        1: FlexColumnWidth(1),
        2: FlexColumnWidth(1),
      },
      children: [
        TableRow(decoration: const BoxDecoration(color: AppColors.lightGreen), children: [
          TableCell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                rowText1,
                style: AppTheme.cardTitle.copyWith(color: Colors.white),
              ),
            ),
          ),
          TableCell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                rowText2,
                style: AppTheme.cardTitle.copyWith(color: Colors.white),
              ),
            ),
          ),
          TableCell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                rowText3,
                style: AppTheme.cardTitle.copyWith(color: Colors.white),
              ),
            ),
          ),
        ])
      ],
    );
  }
}

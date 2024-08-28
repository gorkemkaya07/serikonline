
import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_theme.dart';

class CustomMarketPricesDescriptionTableWidget extends StatelessWidget {
  const CustomMarketPricesDescriptionTableWidget({
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
      border: TableBorder.all(color: AppColors.lightgray),
      columnWidths: const {
        0: FlexColumnWidth(1),
        1: FlexColumnWidth(3),
        2: FlexColumnWidth(1),
      },
      children: [
        TableRow(children: [
          TableCell(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                rowText1,
                style: AppTheme.cardDescription.copyWith(color: AppColors.lightBlack),
              ),
            ),
          ),
           TableCell(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                rowText2,
                style: AppTheme.cardDescription.copyWith(color: AppColors.lightBlack),
              ),
            ),
          ),
           TableCell(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                rowText3,
                style: AppTheme.cardDescription.copyWith(color: AppColors.lightBlack),
              ),
            ),
          ),
        ])
      ],
    );
  }
}

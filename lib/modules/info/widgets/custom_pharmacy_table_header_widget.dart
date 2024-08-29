import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';

class CustomPharmacyTableHeaderWidget extends StatelessWidget {
  const CustomPharmacyTableHeaderWidget({super.key, required this.header1, required this.header2});
  final String header1;
  final String header2;
  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const {
        0: FlexColumnWidth(1),
        1: FlexColumnWidth(1.5),
        2: FlexColumnWidth(1.5),
      },
      border: TableBorder.all(color: Colors.white),
      children: [
        TableRow(
          decoration: const BoxDecoration(color: Color(0xFFff1617)),
          children: [
            TableCell(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('ECZANE', style: AppTheme.cardTitle.copyWith(color: Colors.white)),
            )),
            TableCell(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('ADRES', style: AppTheme.cardTitle.copyWith(color: Colors.white)),
            )),
            TableCell(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('TELEFON', style: AppTheme.cardTitle.copyWith(color: Colors.white)),
            )),
          ],
        ),
      ],
    );
  }
}

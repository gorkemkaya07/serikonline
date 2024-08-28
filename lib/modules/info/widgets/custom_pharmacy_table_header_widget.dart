import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';

class CustomPharmacyTableHeaderWidget extends StatelessWidget {
  const CustomPharmacyTableHeaderWidget({super.key, required this.header1, required this.header2});
  final String header1;
  final String header2;
  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: Colors.white),
      children: [
        TableRow(
          decoration: const BoxDecoration(color: Color(0xFFff1617)),
          children: [
            _buildHeaderCell(text: header1),
            _buildHeaderCell(text: header2),
          ],
        ),
      ],
    );
  }
}

Widget _buildHeaderCell({required String text}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: AppTheme.cardTitle.copyWith(color: Colors.white)),
        const Icon(Icons.location_pin, color: Colors.white, size: 16),
      ],
    ),
  );
}

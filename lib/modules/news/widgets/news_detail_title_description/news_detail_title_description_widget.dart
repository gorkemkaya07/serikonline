import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_card_description/custom_card_description_widget.dart';
import '../../../../core/widgets/custom_card_title/custom_card_title_widget.dart';

class NewsDetailTitleDescriptionWidget extends StatelessWidget {
  const NewsDetailTitleDescriptionWidget({
    super.key,
    required this.title,
    required this.description,
  });
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          CustomCardTitle(title: title),
          const SizedBox(height: 10),
          CustomCardDescription(
            lines: 20,
            description: description,
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

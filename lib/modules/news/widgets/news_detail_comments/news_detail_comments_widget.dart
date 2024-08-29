import 'package:flutter/material.dart';
import '../../../../core/widgets/section_title/section_title_widget.dart';
import '../../../profile/widgets/comment_listing_card/comment_listing_card_widget.dart';
import '../../controllers/news_detail_controller.dart';

class NewsDetailCommentsWidget extends StatelessWidget {
  const NewsDetailCommentsWidget({
    super.key,
    required this.controller,
  });

  final NewsDetailController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: SectionTitleWidget(title: 'Yorumlar', showAll: false),
        ),
        CommentListingCardWidget(commentList: controller.commentList,seeMore: true,)
      ],
    );
  }
}

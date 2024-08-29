import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/core/theme/app_colors.dart';
import 'package:serikonline/core/theme/app_theme.dart';
import 'package:serikonline/core/widgets/time_ago/time_ago_widget.dart';
import '../../../../core/widgets/custom_card_description/custom_card_description_widget.dart';
import '../../../../core/widgets/custom_card_title/custom_card_title_widget.dart';
import '../../../../core/widgets/custom_divider/custom_divider_widget.dart';
import '../../../../core/widgets/custom_image/custom_image_widget.dart';
import '../../../../data/models/profile_comments_model.dart';

class CommentListingCardWidget extends StatelessWidget {
  const CommentListingCardWidget({
    super.key,
    required this.commentList,
    required this.seeMore,
  });
  final bool seeMore;
  final List<ProfileCommentsModel> commentList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: commentList.map((comment) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageWidget(
                      imgUrl: comment.profilePictureImg,
                      sizeWidth: 80,
                      sizeHeight: 80,
                      sizeBorderRadius: 13,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomCardTitle(title: comment.userName),
                            seeMore ? _buildCommentText(comment.comment) : CustomCardDescription(description: comment.comment, lines: 3),
                          ],
                        ),
                      ),
                    ),
                    TimeAgoWidget(dateTime: comment.createdTime)
                  ],
                ),
              ),
              const CustomDividerWidget()
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildCommentText(String comment) {
    final isExpanded = false.obs; // Use RxBool for reactive state management
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          comment,
          maxLines: isExpanded.value ? null : 3,
          overflow: isExpanded.value ? TextOverflow.visible : TextOverflow.ellipsis,
          style: AppTheme.cardDescription,
        ),
        GestureDetector(
          onTap: () {
            isExpanded.toggle(); // Toggle the value on tap
          },
          child: Text(
            isExpanded.value ? "Gizle" : "Devamını Gör",
            style: AppTheme.cardDescription.copyWith(color: AppColors.navyBlue),
          ),
        ),
      ],
    );
  }
}

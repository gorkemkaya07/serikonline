import 'package:flutter/material.dart';
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
  });
  final List<ProfileCommentsModel> commentList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: commentList.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SizedBox(
          height: 112,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageWidget(imgUrl: commentList[index].profilePictureImg, sizeWidth: 80, sizeHeight: 80, sizeBorderRadius: 13),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomCardTitle(title: commentList[index].userName),
                            CustomCardDescription(description: commentList[index].comment),
                          ],
                        ),
                      ),
                    ),
                    TimeAgoWidget(dateTime: commentList[index].createdTime)
                  ],
                ),
              ),
              const CustomDividerWidget()
            ],
          ),
        ),
      ),
    );
  }
}

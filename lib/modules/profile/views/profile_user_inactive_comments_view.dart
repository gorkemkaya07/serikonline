import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/modules/profile/widgets/comment_listing_card/comment_listing_card_widget.dart';

import '../../../core/widgets/custom_app_bar/custom_app_bar_widget.dart';
import '../controllers/profile_user_inactive_comments_controller.dart';

class ProfileUserInActiveCommentsView extends GetView<ProfileUserInActiveCommentsController> {
  const ProfileUserInActiveCommentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(),
      body: CommentListingCardWidget(commentList: controller.commentList),
    );
  }
}

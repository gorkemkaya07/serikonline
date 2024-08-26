import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/core/widgets/custom_app_bar/custom_app_bar_widget.dart';
import 'package:serikonline/modules/profile/widgets/comment_listing_card/comment_listing_card_widget.dart';
import '../controllers/profile_user_active_comments_controller.dart';

class ProfileUserActiveCommentsView extends GetView<ProfileUserActiveCommentsController> {
  const ProfileUserActiveCommentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(),
      body: CommentListingCardWidget(commentList: controller.commentList),
    );
  }
}

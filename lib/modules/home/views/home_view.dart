import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/widgets/custom_app_bar_widget/custom_app_bar_widget.dart';
import '../controllers/home_controller.dart';
import '../widgets/story/home_story_list_widget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBarWidget(),
        body: SafeArea(
          child: HomeStoryListWidget(stories: controller.stories),
        ));
  }
}

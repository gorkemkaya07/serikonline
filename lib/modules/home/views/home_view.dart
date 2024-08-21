import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/modules/home/widgets/latest_news_widget/home_latest_news_widget.dart';
import '../../../core/widgets/custom_app_bar/custom_app_bar_widget.dart';
import '../controllers/home_controller.dart';
import '../widgets/info_widget/home_info_widget.dart';
import '../widgets/story_widget/home_story_list_widget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBarWidget(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              HomeStoryListWidget(stories: controller.stories),
              CustomLatestNewsWidget(newsList: controller.news),
              HomeInfoWidget(menuList: controller.info,)
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/modules/home/widgets/latest_news/home_latest_news_widget.dart';
import '../../../core/widgets/custom_app_bar/custom_app_bar_widget.dart';
import '../../../core/widgets/section_title/section_title_widget.dart';
import '../controllers/home_controller.dart';
import '../../../core/widgets/menu_card_list/menu_card_list_widget.dart';
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
              const SectionTitleWidget(
                  title: "Güncel Bilgiler", showAll: true),
              MenuCardListWidget(
                menuList: controller.info,
               
              )
            ],
          ),
        ));
  }
}

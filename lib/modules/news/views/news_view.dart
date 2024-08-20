import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/core/widgets/section_title/section_title_widget.dart';
import 'package:serikonline/modules/news/widgets/search_bar_widget/custom_search_bar_widget.dart';
import '../../../core/widgets/custom_app_bar/custom_app_bar_widget.dart';
import '../controllers/news_controller.dart';
import '../widgets/news_list_widget/custom_news_list_widget.dart';

class NewsView extends GetView<NewsController> {
  NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(),
      body: Column(
        children: [
          const SectionTitleWidget(title: "Haberler", showAll: false),
          const CustomSearchBarWidget(title: "Haber ara"),
          CustomNewsListWidget(newsList: controller.news),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:serikonline/core/theme/app_theme.dart';
import 'package:serikonline/core/widgets/section_title/section_title_widget.dart';
import 'package:serikonline/modules/home/widgets/story_widget/home_story_controller.dart';
import 'package:serikonline/modules/home/widgets/story_widget/home_story_screen_widget.dart';
import 'package:serikonline/data/models/home_story_model.dart';

import '../../../../core/widgets/custom_divider/custom_divider_widget.dart';

class HomeStoryListWidget extends StatelessWidget {
  final List<HomeStoryModel> stories;

  const HomeStoryListWidget({super.key, required this.stories});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        const SectionTitleWidget(title: 'Hikayeler',showAll: false),
      
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: SizedBox(
            height: 120, // Yükseklik ayarı
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: stories.length,
              itemBuilder: (context, index) {
                final story = stories[index];
                return GestureDetector(
                  onTap: () => _openStory(context, index),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              CachedNetworkImageProvider(story.imageUrl),
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                          width:
                              70, // CircleAvatar'ın genişliğine uygun olarak ayarlayın
                          child: Text(
                            story.title,
                            style: AppTheme.storyTitle,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center, // Yazıyı ortalayın
                            maxLines:
                                2, // Yazının 2 satırdan fazla olmamasını sağlayın
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 10),
        const CustomDividerWidget(),
      ],
    );
  }

  void _openStory(BuildContext context, int initialIndex) {
    Get.to(
      () => HomeStoryScreenWidget(
        stories: stories,
        initialIndex: initialIndex,
      ),
      fullscreenDialog: true,
      binding: BindingsBuilder(() {
        Get.lazyPut<HomeStoryController>(() => HomeStoryController());
      }),
    );
  }
}

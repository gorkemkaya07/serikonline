import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:serikonline/modules/home/widgets/story/home_story_controller.dart';
import 'package:serikonline/modules/home/widgets/story/models/home_story_model.dart';

class HomeStoryScreenWidget extends GetView<HomeStoryController> {
  final List<HomeStoryModel> stories;
  final int initialIndex;

  const HomeStoryScreenWidget({super.key, required this.stories, required this.initialIndex});

  @override
  Widget build(BuildContext context) {
    controller.initialize(stories: stories, initialIndex: initialIndex);

    return Scaffold(
      body: Stack(
        children: [
          // Gradient Background
          Positioned.fill(
            child: Obx(() {
              final currentStory = stories[controller.currentIndex.value];
              return Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: _getGradientColors(currentStory),
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              );
            }),
          ),
          // Story Image
          Center(
            child: PageView.builder(
              controller: controller.pageController,
              itemCount: stories.length,
              onPageChanged: (index) => controller.updateCurrentIndex(index),
              itemBuilder: (context, index) {
                final story = stories[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: CachedNetworkImage(
                    imageUrl: story.imageUrl,
                    fit: BoxFit.contain,
                    width: double.infinity,
                  ),
                );
              },
            ),
          ),
          // Story Title with white background
          Positioned(
            top: Get.height*.2,
            left: 0,
            right: 0,
            child: Obx(() {
              return Container(
                color: Colors.white,
                padding: const EdgeInsets.all(8),
                child: Text(
                  stories[controller.currentIndex.value].title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              );
            }),
          ),
          // Progress Indicators
          Positioned(
            bottom: 0, // Indicator'ı en alta yerleştir
            left: 0,
            right: 0,
            child: Row(
              children: List.generate(stories.length, (index) {
                return Expanded(
                  child: Obx(() {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      height: 5,
                      decoration: BoxDecoration(
                        color: index < controller.currentIndex.value
                            ? Colors.white
                            : Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: index == controller.currentIndex.value
                          ? LinearProgressIndicator(
                              value: controller.progress.value,
                              backgroundColor: Colors.white.withOpacity(0.5),
                              color: Colors.white,
                            )
                          : null,
                    );
                  }),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  List<Color> _getGradientColors(HomeStoryModel story) {
    // Resmin başından ve sonundan renkleri alıp gradient oluşturma
    // Placeholder olarak varsayılan gradient renkleri döndürülüyor
    // Bu kısmı resimden gerçek renkleri alacak şekilde düzenleyebilirsiniz
    return [
      Colors.black.withOpacity(0.7),
      Colors.black.withOpacity(0.3),
    ];
  }
}

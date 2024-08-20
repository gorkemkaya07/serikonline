import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../data/models/home_story_model.dart';

class HomeStoryController extends GetxController {
  late PageController pageController;
  var currentIndex = 0.obs;
  var progress = 0.0.obs;
  late List<HomeStoryModel> stories;
  static const storyDuration =
      Duration(seconds: 3); // Her hikaye için sabit süre
  late Timer _timer;

  void initialize(
      {required List<HomeStoryModel> stories, required int initialIndex}) {
    this.stories = stories;
    currentIndex.value = initialIndex;
    pageController = PageController(initialPage: currentIndex.value);
    _startStoryTimer();
  }

  void _startStoryTimer() {
    progress.value = 0.0;
    _timer = Timer.periodic(const Duration(milliseconds: 30), (timer) {
      progress.value += 0.01; // Progress her 30ms'lik sürede artacak
      if (progress.value >= 1.0) {
        _nextStory();
      }
    });
  }

  void updateCurrentIndex(int index) {
    currentIndex.value = index;
    _timer.cancel(); // Mevcut timer'ı durdur
    _startStoryTimer(); // Yeni hikaye için timer'ı başlat
  }

  void _nextStory() {
    _timer.cancel(); // Mevcut timer'ı durdur
    if (currentIndex.value < stories.length - 1) {
      currentIndex.value++;
      pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
      _startStoryTimer(); // Sonraki hikaye için timer'ı yeniden başlat
    } else {
      Get.back(); // Tüm hikayeler bittiğinde geri dön
    }
  }

  @override
  void onClose() {
    _timer.cancel(); // Timer'ı kapat
    pageController.dispose();
    super.onClose();
  }
}

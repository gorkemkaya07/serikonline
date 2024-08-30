import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/custom_image/custom_image_widget.dart';

class CustomSliderWidget extends StatelessWidget {
  const CustomSliderWidget({
    super.key,
    required this.controller,
  });

  final dynamic controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(
            width: Get.width,
            height: Get.height * .25,
            child: PageView.builder(
              itemCount: controller.imgList.length,
              controller: controller.pageController,
              onPageChanged: (index) => controller.currentPage.value = index,
              itemBuilder: (context, index) {
                return CustomImageWidget(
                  imgUrl: controller.imgList[index],
                  sizeWidth: Get.width,
                  sizeHeight: Get.height * .25,
                  sizeBorderRadius: 0,
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                controller.imgList.length,
                (index) => Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: controller.currentPage.value == index
                          ? AppColors.primary
                          // Seçili sayfayı göster
                          : AppColors.normalgray // Diğer sayfaları göster
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

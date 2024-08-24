import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/widgets/custom_card_description/custom_card_description_widget.dart';
import '../../../../core/widgets/custom_card_title/custom_card_title_widget.dart';
import '../../../../core/widgets/custom_card_with_icon_text/custom_card_with_icon_text_widget.dart';
import '../../../../core/widgets/custom_divider/custom_divider_widget.dart';
import '../../../../core/widgets/custom_image/custom_image_widget.dart';

class UserAdsCardWidget extends StatelessWidget {
  const UserAdsCardWidget({
    super.key,
    required this.imgUrl,
    required this.title,
    required this.description,
    required this.location,
    required this.category,
    required this.views,
  });

  final String imgUrl;
  final String title;
  final String description;
  final String location;
  final String category;
  final int views;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: Get.width,
        height: 112,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 15),
              child: SizedBox(
                height: 80,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageWidget(
                        imgUrl: imgUrl,
                        sizeWidth: 80,
                        sizeHeight: 80,
                        sizeBorderRadius: 13),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0, right: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomCardTitle(title: title),
                            CustomCardDescription(description: description),
                            CustomCardWithIconTextWidget(
                                text: views.toString(), icon: Icons.visibility)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          InkWell(
                              onTap: () => Get.toNamed(category == 'job' ? '/job_detail':'/sale_detail'),
                              child: const Icon(Icons.more_horiz)),
                          CustomCardWithIconTextWidget(
                            text: location,
                            icon: Icons.location_pin,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const CustomDividerWidget()
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/core/widgets/time_ago/time_ago_widget.dart';
import 'package:serikonline/data/models/ads_model.dart';
import '../../../../core/widgets/custom_card_description/custom_card_description_widget.dart';
import '../../../../core/widgets/custom_card_title/custom_card_title_widget.dart';
import '../../../../core/widgets/custom_card_with_icon_text/custom_card_with_icon_text_widget.dart';
import '../../../../core/widgets/custom_divider/custom_divider_widget.dart';
import '../../../../core/widgets/custom_image/custom_image_widget.dart';

class JobAdsCardWidget extends StatelessWidget {
  const JobAdsCardWidget({
    super.key,
    required this.adsList,
  });

  final List<AdsModel> adsList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: adsList.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => Get.toNamed('/job_ads_detail', arguments: adsList[index]),
            child: SizedBox(
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
                            CustomImageWidget(imgUrl: adsList[index].imageUrl, sizeWidth: 80, sizeHeight: 80, sizeBorderRadius: 13),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0, right: 5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomCardTitle(title: adsList[index].title),
                                    CustomCardDescription(
                                      description: adsList[index].company,
                                      lines: 1,
                                    ),
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
                                  TimeAgoWidget(dateTime: DateTime(2024, 7, 16)),
                                  CustomCardWithIconTextWidget(
                                    text: adsList[index].location,
                                    icon: Icons.location_on_outlined,
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
                )),
          );
        });
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/core/theme/app_theme.dart';
import 'package:serikonline/core/widgets/custom_app_bar/custom_app_bar_widget.dart';
import 'package:serikonline/core/widgets/custom_card_description/custom_card_description_widget.dart';
import 'package:serikonline/core/widgets/custom_card_title/custom_card_title_widget.dart';
import 'package:serikonline/core/widgets/custom_divider/custom_divider_widget.dart';
import 'package:serikonline/core/widgets/custom_image/custom_image_widget.dart';

import '../controllers/profile_user_comments_controller.dart';

class ProfileUserCommentsView extends GetView<ProfileUserCommentsController> {
  const ProfileUserCommentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  height: 112,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageWidget(
                                imgUrl:
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH87TKQrWcl19xly2VNs0CjBzy8eaKNM-ZpA&s',
                                sizeWidth: 80,
                                sizeHeight: 80,
                                sizeBorderRadius: 13),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomCardTitle(title: 'Görkem Kaya'),
                                    CustomCardDescription(
                                        description:
                                            'Gerçekten çok kötü kaza olmuş, lütfen bu tür kazalar olmaması için dikkat edelim arkadaşlar. Vefat eden arkadaşların mekanı cennet olsun inşallah.'),
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              'Yayında',
                              style: AppTheme.cardTimeAgo,
                            )
                          ],
                        ),
                      ),
                      CustomDividerWidget()
                    ],
                  ),
                ),
              )),
    );
  }
}

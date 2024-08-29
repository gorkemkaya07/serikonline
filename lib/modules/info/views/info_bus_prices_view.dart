import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/core/widgets/custom_app_bar/custom_app_bar_widget.dart';
import 'package:serikonline/core/widgets/custom_image/custom_image_widget.dart';
import 'package:serikonline/core/widgets/section_title/section_title_widget.dart';
import 'package:serikonline/core/widgets/time_ago/time_ago_widget.dart';

import '../controllers/info_bus_prices_controller.dart';
import '../widgets/custom_bus_prices_table_description_widget.dart';
import '../widgets/custom_bus_prices_table_header_widget.dart';

class InfoBusPricesView extends GetView<InfoBusPricesController> {
  final String textRow1 = 'Rotasyon';
  final String textRow2 = 'Ücret';
  final String textRow3 = 'Başlangıç';
  final String textRow4 = 'Bitiş';
  final String textRow5 = 'Sefer';

  const InfoBusPricesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SectionTitleWidget(title: 'Sefer Ücretleri', showAll: false),
              TimeAgoWidget(dateTime: DateTime.now()),
            ],
          ),
          const SizedBox(height: 10),
          CustomImageWidget(
            imgUrl:
                'https://www.mercedes-benz-bus.com/content/dam/mbo/markets/tr_TR/brand/about-us/images/teaser/Hakk%C4%B1m%C4%B1zda_teaser_191205.jpg',
            sizeWidth: Get.width,
            sizeHeight: Get.height * .2,
            sizeBorderRadius: 0,
          ),
          const SizedBox(height: 20),
          CustomBusPricesTableHeaderWidget(
            textRow1: textRow1,
            textRow2: textRow2,
            textRow3: textRow3,
            textRow4: textRow4,
            textRow5: textRow5,
          ),
          const SizedBox(height: 5),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(), // ListView'in kaydırılabilirliğini devre dışı bırakın
            itemCount: 20,
            itemBuilder: (context, index) => CustomBusPricesTableDescriptionWidget(
              textRow1: textRow1,
              textRow2: textRow2,
              textRow3: textRow3,
              textRow4: textRow4,
              textRow5: textRow5,
            ),
          ),
        ],
      ),
    );
  }
}

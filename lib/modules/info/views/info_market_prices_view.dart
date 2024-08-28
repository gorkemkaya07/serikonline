import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/core/theme/app_colors.dart';
import 'package:serikonline/core/theme/app_theme.dart';
import 'package:serikonline/core/widgets/custom_app_bar/custom_app_bar_widget.dart';
import 'package:serikonline/core/widgets/custom_image/custom_image_widget.dart';
import 'package:serikonline/core/widgets/section_title/section_title_widget.dart';
import 'package:serikonline/core/widgets/time_ago/time_ago_widget.dart';

import '../controllers/info_market_prices_controller.dart';
import '../widgets/custom_market_prices_description_table_widget.dart';
import '../widgets/custom_market_prices_header_table_widget.dart';

class InfoMarketPricesView extends GetView<InfoMarketPricesController> {
  const InfoMarketPricesView({super.key});
  final String rowText1 = 'KG';
  final String rowText2 = 'DOMATES';
  final String rowText3 = '13.00 TL';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBarWidget(),
        body: RefreshIndicator.adaptive(
          backgroundColor: Colors.grey,
          displacement: 3,
          color: Colors.white,
          onRefresh: () async {
            await Future.delayed(const Duration(seconds: 1));
          },
          child: Visibility(
            visible: true,
            replacement: const Center(
              child: Text(
                'Mevcut veri bulunamadı.',
                style: AppTheme.cardTitle,
              ),
            ),
            child: ListView(
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.all(20),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SectionTitleWidget(title: 'Hal Fiyatları', showAll: false),
                    TimeAgoWidget(dateTime: DateTime.now()),
                  ],
                ),
                const SizedBox(height: 10),
                CustomImageWidget(
                    imgUrl: 'https://static.daktilo.com/sites/685/uploads/2022/10/28/large/hal-fiyatlari-1666947001.jpg',
                    sizeWidth: Get.width,
                    sizeHeight: Get.height * .2,
                    sizeBorderRadius: 0),
                const SizedBox(height: 15),
                Text(
                  '10.07.2024',
                  style: AppTheme.sectionTitle.copyWith(color: AppColors.lightOrange),
                ),
                const SizedBox(height: 10),
                const CustomMarketPricesHeaderTableWidget(rowText1: 'Birim', rowText2: 'Ürün', rowText3: 'Fiyat'),
                const SizedBox(height: 5),
                CustomMarketPricesDescriptionTableWidget(rowText1: rowText1, rowText2: rowText2, rowText3: rowText3),
                const SizedBox(height: 5),
                CustomMarketPricesDescriptionTableWidget(rowText1: rowText1, rowText2: 'SİVRİ BİBER', rowText3: '20.00 TL'),
                const SizedBox(height: 5),
                CustomMarketPricesDescriptionTableWidget(rowText1: rowText1, rowText2: 'DOLMA BİBER', rowText3: '32.00 TL'),
                const SizedBox(height: 5),
                CustomMarketPricesDescriptionTableWidget(rowText1: rowText1, rowText2: 'DOLMA BİBER', rowText3: '32.00 TL'),
                const SizedBox(height: 5),
                CustomMarketPricesDescriptionTableWidget(rowText1: rowText1, rowText2: 'DOLMA BİBER', rowText3: '32.00 TL'),
                const SizedBox(height: 5),
                CustomMarketPricesDescriptionTableWidget(rowText1: rowText1, rowText2: 'DOLMA BİBER', rowText3: '32.00 TL'),
                const SizedBox(height: 5),
                CustomMarketPricesDescriptionTableWidget(rowText1: rowText1, rowText2: 'DOLMA BİBER', rowText3: '32.00 TL'),
                const SizedBox(height: 5),
                CustomMarketPricesDescriptionTableWidget(rowText1: rowText1, rowText2: 'DOLMA BİBER', rowText3: '32.00 TL'),
                const SizedBox(height: 5),
                CustomMarketPricesDescriptionTableWidget(rowText1: rowText1, rowText2: 'DOLMA BİBER', rowText3: '32.00 TL'),
                const SizedBox(height: 5),
                CustomMarketPricesDescriptionTableWidget(rowText1: rowText1, rowText2: 'DOLMA BİBER', rowText3: '32.00 TL'),
                const SizedBox(height: 5),
                CustomMarketPricesDescriptionTableWidget(rowText1: rowText1, rowText2: 'DOLMA BİBER', rowText3: '32.00 TL')
              ],
            ),
          ),
        ));
  }
}

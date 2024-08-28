import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/core/theme/app_colors.dart';
import 'package:serikonline/core/theme/app_theme.dart';
import 'package:serikonline/core/widgets/custom_app_bar/custom_app_bar_widget.dart';
import 'package:serikonline/core/widgets/custom_image/custom_image_widget.dart';
import 'package:serikonline/core/widgets/section_title/section_title_widget.dart';
import 'package:serikonline/core/widgets/time_ago/time_ago_widget.dart';

import '../controllers/info_currency_exchange_rates_controller.dart';
import '../widgets/custom_currency_exchange_rates_table_description_widget.dart';
import '../widgets/custom_currency_exchange_rates_table_header_widget.dart';

class InfoCurrencyExchangeRatesView extends GetView<InfoCurrencyExchangeRatesController> {
  final Map<String, String> rowTexts = {
    'rowText1': 'Birim',
    'rowText2': 'Alış',
    'rowText3': 'Satış',
  };

  InfoCurrencyExchangeRatesView({super.key});

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
        child: ListView(
          
          padding: const EdgeInsets.all(20.0),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SectionTitleWidget(title: 'Döviz Kuru', showAll: false),
                TimeAgoWidget(dateTime: DateTime.now()),
              ],
            ),
            const SizedBox(height: 15),
            CustomImageWidget(
              imgUrl: 'https://static.daktilo.com/sites/1059/uploads/2024/06/20/large/pexels-pixabay-164527-1717427634.webp',
              sizeWidth: Get.width,
              sizeHeight: Get.height * .2,
              sizeBorderRadius: 0,
            ),
            const SizedBox(height: 15),
            Center(child: Text('28.08.2024', style: AppTheme.sectionTitle.copyWith(color: AppColors.lightGreen))),
            const SizedBox(height: 10),
            CustomCurrencyExchangeRatesTableHeaderWidget(
              rowText1: rowTexts['rowText1']!,
              rowText2: rowTexts['rowText2']!,
              rowText3: rowTexts['rowText3']!,
            ),
            const SizedBox(height: 5),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(), // İç kaydırmayı kapatıyor
              shrinkWrap: true,
              itemCount: 15,
              itemBuilder: (context, index) => const Column(
                children: [
                  CustomCurrencyExchangeRatesTableDescriptionWidget(
                    rowText1: 'USD',
                    rowText2: '33,752',
                    rowText3: '34,002',
                  ),
                  SizedBox(height: 5)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/modules/ads/widgets/sale_ads_card_widget.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/widgets/custom_app_bar/custom_app_bar_widget.dart';
import '../../../core/widgets/section_title/section_title_widget.dart';
import '../controllers/sale_ads_controller.dart';

class SaleAdsView extends GetView<SaleAdsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: SectionTitleWidget(title: '2. El İlanları', showAll: false),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
                height: 50,
                child: TextField(
                    cursorColor: AppColors.primary,
                    style: AppTheme.cardTitle.copyWith(color: AppColors.darkgray, fontWeight: FontWeight.w400),
                    decoration: AppTheme.textFieldDecoration.copyWith(hintText: 'Ürün ara', suffixIcon: const Icon(Icons.search)))),
          ),
          const SizedBox(height: 10),
          Expanded(child: ListView(children: [SaleAdsCardWidget(adsList: controller.adsList)]))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/core/widgets/custom_app_bar/custom_app_bar_widget.dart';
import 'package:serikonline/core/widgets/custom_image/custom_image_widget.dart';
import 'package:serikonline/core/widgets/section_title/section_title_widget.dart';
import 'package:serikonline/core/widgets/time_ago/time_ago_widget.dart';
import 'package:serikonline/modules/info/widgets/custom_pharmacy_table_header_widget.dart';
import '../controllers/info_on_duty_pharmacy_controller.dart';
import '../widgets/custom_pharmacy_description_text_widget.dart';
import '../widgets/custom_pharmacy_table_row_widget.dart';

class InfoOnDutyPharmacyView extends GetView<InfoOnDutyPharmacyController> {
  const InfoOnDutyPharmacyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBarWidget(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [const SectionTitleWidget(title: "Nöbetçi Eczane", showAll: false), TimeAgoWidget(dateTime: DateTime.now())],
                ),
                const SizedBox(height: 15),
                CustomImageWidget(
                    imgUrl:
                        'https://marketplace.canva.com/EAFJ8-mKF0I/1/0/1600w/canva-k%C4%B1r%C4%B1m%C4%B1z%C4%B1-modern-n%C3%B6bet%C3%A7i-eczane-logo-BHwmORjo78A.jpg',
                    sizeWidth: Get.width,
                    sizeHeight: Get.height * .2,
                    sizeBorderRadius: 0),
                const SizedBox(height: 15),
                const CustomPharmacyDescriptionTextWidget(redText: '(28 Ağustos 2024 Çarşamba)', blackText: ' mesai bitiminden,'),
                const SizedBox(height: 2),
                const CustomPharmacyDescriptionTextWidget(redText: '(29 Ağustos 2024 Perşembe)', blackText: ' sabahına kadar açıktır.'),
                const SizedBox(height: 15),
                const CustomPharmacyTableHeaderWidget(header1: 'SERIK', header2: 'BELEK'),
                const SizedBox(height: 5),
                const CustomPharmacyTableRowWidget(rowText1: 'Gül Eczanesi', rowText2: 'Belek Eczanesi'),
                const SizedBox(height: 5),
                const CustomPharmacyTableRowWidget(
                    rowText1: 'Cumhuriyet Mahallesi, Hürriyet Caddesi, Akıl Apt. No:13/A Serik / Antalya',
                    rowText2: 'Cumhuriyet Mahallesi, Hürriyet Caddesi, Akıl Apt. No:13/A Serik / Antalya'),
                const SizedBox(height: 5),
                const CustomPharmacyTableRowWidget(rowText1: '0 (242) 712-58-84', rowText2: '0 (242) 712-58-84'),
              ],
            ),
          ),
        ));
  }
}

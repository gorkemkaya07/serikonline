import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/core/theme/app_colors.dart';
import 'package:serikonline/core/theme/app_theme.dart';
import 'package:serikonline/core/widgets/custom_app_bar/custom_app_bar_widget.dart';
import 'package:serikonline/core/widgets/custom_image/custom_image_widget.dart';
import 'package:serikonline/core/widgets/section_title/section_title_widget.dart';
import 'package:serikonline/core/widgets/time_ago/time_ago_widget.dart';
import '../controllers/info_on_duty_pharmacy_controller.dart';

class InfoOnDutyPharmacyView extends GetView<InfoOnDutyPharmacyController> {
  const InfoOnDutyPharmacyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBarWidget(),
        body: Padding(
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
              RichText(
                text: TextSpan(
                  text: '(9 Temmuz 2024 Salı) ', // Kırmızı olan kısım
                  style: TextStyle(color: Colors.red),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'mesai bitiminden, ',
                      style: TextStyle(color: Colors.grey), // Siyah olan kısım
                    ),
                  ],
                ),
              ),
                    RichText(
                text: TextSpan(
                  text: '(10 Temmuz 2024 Salı) ', // Kırmızı olan kısım
                  style: TextStyle(color: Colors.red),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'sabaha kadar açık olan eczaneler',
                      style: TextStyle(color: Colors.grey), // Siyah olan kısım
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Table(
                border: TableBorder.all(color: Colors.white),
                children: [
                  TableRow(
                    decoration: const BoxDecoration(color: Color(0xFFff1617)),
                    children: [
                      _buildHeaderCell('Serik'),
                      _buildHeaderCell('Belek'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 5),
              Table(
                border: TableBorder.all(color: AppColors.normalgray.withOpacity(.5)),
                children: [
                  TableRow(
                    children: [
                      _buildPharmacyCell(icon: Icons.local_pharmacy, name: 'Gül Eczanesi'),
                      _buildPharmacyCell(icon: Icons.local_pharmacy, name: 'Belek Eczanesi'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 5),
              Table(
                border: TableBorder.all(color: AppColors.normalgray.withOpacity(.5)),
                children: [
                  TableRow(
                    children: [
                      _buildPharmacyCell(
                          icon: Icons.local_pharmacy, name: 'Cumhuriyet Mahallesi, Hürriyet Caddesi, Akıl Apt. No:13/A Serik / Antalya'),
                      _buildPharmacyCell(
                          icon: Icons.local_pharmacy, name: 'Cumhuriyet Mahallesi, Hürriyet Caddesi, Akıl Apt. No:13/A Serik / Antalya'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 5),
              Table(
                border: TableBorder.all(color: AppColors.normalgray.withOpacity(.5)),
                children: [
                  TableRow(
                    children: [
                      _buildPharmacyCell(icon: Icons.local_pharmacy, name: '0 (242) 712-58-84'),
                      _buildPharmacyCell(icon: Icons.local_pharmacy, name: '0 (242) 712-58-84'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  Widget _buildHeaderCell(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
       
        
          Text(text, style: AppTheme.cardTitle.copyWith(color: Colors.white)),
            const Icon(Icons.location_pin,color: Colors.white,size: 16),
        ],
      ),
    );
  }

  Widget _buildPharmacyCell({required IconData icon, required String name}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        name,
        style: AppTheme.cardDescription.copyWith(color: AppColors.lightBlack,fontWeight: FontWeight.w400),
      ),
    );
  }
}

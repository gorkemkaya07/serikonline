import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/core/theme/app_colors.dart';
import 'package:serikonline/core/theme/app_theme.dart';
import 'package:serikonline/core/widgets/custom_app_bar/custom_app_bar_widget.dart';
import 'package:serikonline/core/widgets/custom_card_description/custom_card_description_widget.dart';
import 'package:serikonline/core/widgets/custom_card_title/custom_card_title_widget.dart';
import 'package:serikonline/core/widgets/custom_divider/custom_divider_widget.dart';
import 'package:serikonline/core/widgets/custom_image/custom_image_widget.dart';
 import '../controllers/job_ads_detail_controller.dart';

class JobAdsDetailView extends GetView<JobAdsDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(20),
                child: Center(
                  child: CustomCardTitle(title: '5 Yıldızlı Otelde Garson Alımı Yapılacaktır'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20, top: 10, bottom: 30),
                child: Center(
                  child: CustomImageWidget(
                    imgUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsW7zsWUn2P7Jg2jiIIVu2S3M_ek1lrlNVtw&s',
                    sizeWidth: 110,
                    sizeHeight: 110,
                    sizeBorderRadius: 13,
                  ),
                ),
              ),
              newTitle(title: 'İlan Tarihi : ', description: '22.05.2024'),
              const SizedBox(height: 5),
              const CustomDividerWidget(),
              const SizedBox(height: 5),
              newTitle(title: 'Şirket Adı :', description: 'Papillon Ayscha Hotel'),
              const SizedBox(height: 5),
              const CustomDividerWidget(),
              const SizedBox(height: 5),
              newTitle(title: 'Adresi :', description: 'Merkez, İleribaşı Mevkii, Belek Turizm Yolu, 07500 Serik/Antalya'),
              const SizedBox(height: 5),
              const CustomDividerWidget(),
              const SizedBox(height: 5),
              newTitle(title: 'Konumu :', description: 'Belek'),
              const SizedBox(height: 5),
              const CustomDividerWidget(),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 20, left: 20, right: 20), child: CustomCardTitle(title: 'İş Tanımı')),
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 75),
            child: CustomCardDescription(
              description:
                  '*Kamera Güvenlik sistemi, Telefon Santrali, Hırsız ve Yangın Alarm, Network Sistemi vb.. faaliyet konularımızda kurulum ve yerinde servis hizmetlerini sağlamak, *Müşterimizin talepleri doğrultusunda ürünlerin kontrollerinin, arızalarının ve bakımlarının yapılmasını sağlamak. *Sürdürülebilir müşteri memnuniyeti çerçevesinde müşterilerimize teknik bilgi ve destek sağlamak. ARANAN ÖZELLİKLER * Antalya da ikamet eden, * Sahada çalışma engeli olmayan, * Analitik düşünebilen, * Diksiyonu düzgün, * Araç kullanım ehliyeti olan, * Pozitif yapıda, * Öğrenmeye ve kendini geliştirmeye istekli, * En önemlisi dürüst ve yalanı olmayacak *Bay personel alınacaktır.',
              lines: 50,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text(
          'HEMEN ARA',
          style: AppTheme.cardTitle.copyWith(color: Colors.white),
        ),
        backgroundColor: AppColors.primary,
        icon: const Icon(
          Icons.phone,
          color: Colors.white,
          size: 18,
        ),
      ),
    );
  }

  Padding newTitle({required String title, required String description}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: Get.width * .23 - 20,
            child: Text(
              title,
              style: AppTheme.cardTitle.copyWith(fontSize: 12),
              textAlign: TextAlign.right,
            ),
          ),
          const SizedBox(width: 5),
          SizedBox(
            width: Get.width * .77 - 25,
            child: Text(
              description,
              style: AppTheme.cardDescription.copyWith(color: AppColors.darkgray),
            ),
          ),
        ],
      ),
    );
  }
}

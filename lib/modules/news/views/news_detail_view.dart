import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/core/theme/app_colors.dart';
import 'package:serikonline/core/theme/app_theme.dart';
import 'package:serikonline/core/widgets/custom_app_bar/custom_app_bar_widget.dart';
import 'package:serikonline/core/widgets/custom_divider/custom_divider_widget.dart';
import 'package:serikonline/core/widgets/section_title/section_title_widget.dart';
import 'package:serikonline/core/widgets/time_ago/time_ago_widget.dart';
import '../controllers/news_detail_controller.dart';
import '../widgets/news_detail_comments/news_detail_comments_widget.dart';
import '../widgets/news_detail_title_description/news_detail_title_description_widget.dart';
import '../widgets/slider/custom_slider_widget.dart';

class NewsDetailView extends GetView<NewsDetailController> {
  const NewsDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SectionTitleWidget(title: 'Haber Detayı', showAll: false),
                    TimeAgoWidget(dateTime: DateTime.now()),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              CustomSliderWidget(controller: controller),
              const SizedBox(height: 10),
              const NewsDetailTitleDescriptionWidget(
                title: 'Kadriye Yılmaz Konak Düğün Salonunda Büyük Yangın işte detaylar..',
                description:
                    'Yangın bugün saat 15.00 sıralarında Kadriye – Belek turizm yolu üzerinde meydana geldi. Turizm caddesi üzerinde bulunan otluk alanda elektrik tellerinden kaynaklı yangın çıktı. Alevler rüzgarın etkisi ile arazinin aynında bulunan ormanlık alana ve bir düğün salonunun depo binasına sıçradı. Vatandaşların ihbarı üzerine bölgeye polis, itfaiye ve Orman İşletme Müdürlüğüne ait ekipler sevk edildi. 6 İtfaiye ile 2 Arasöz’ün müdahale ettiği yangın çevrede bulunan villalara sıçramadan 1 saatte söndürüldü. Yangında Bir düğün salonunun depo binasının bir bölümü ile depoda bulunan malzemeler tamamen yanarak maddi zarar meydana geldi. Öte yandan yaklaşık 5 dönüm ormanlık alan içerisinde bulunan ağaçlar ile 7 dönümde otluk alan yandı. Yangın alanından çıkan dumanlar sahilde bulunan 5 yıldızlı otellerinin üzerini kapladı. Yangınla ilgili itfaiye ekiplerinin soğutma çalışmaları devam ediyor. Polis yangınla ilgili inceleme başlattı.',
              ),
              const CustomDividerWidget(),
              const SizedBox(height: 20),
              NewsDetailCommentsWidget(controller: controller),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        onPressed: () {
          _showCommentDialog(context);
        },
        child: const Icon(Icons.add_comment,color: Colors.white,),
      ),
    );
  }

  void _showCommentDialog(
    BuildContext context,
  ) {
    Get.dialog(Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Yorum Yap',
              style: AppTheme.cardTitle
            ),
            const SizedBox(height: 20.0),
            TextField(maxLines: 4, decoration: AppTheme.textFieldDecoration.copyWith(hintText: 'Yorumunuzu yazın')),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'İptal',
                    style: AppTheme.cardTitle.copyWith(color: AppColors.darkgray),
                  ),
                ),
                const SizedBox(width: 8.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Gönder',
                    style: AppTheme.cardTitle.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

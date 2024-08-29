import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        onPressed: () {
          _showCommentDialog(context);
        },
        child: const Icon(Icons.add_comment),
      ),
    );
  }

  void _showCommentDialog(
    BuildContext context,
  ) {
    String newComment = '';
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: const Text('Yorum Yap',style: AppTheme.cardTitle,),
          content: TextField(
            maxLines: 5,
            onChanged: (value) {
              newComment = value;
            },
            decoration: AppTheme.textFieldDecoration.copyWith(hintText: 'Yorumunuzu yazınız',),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('İptal'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Gönder'),
              onPressed: () {
                if (newComment.isNotEmpty) {
                  controller.addComment(
                    newComment,
                    'Aslı Sönmez',
                    DateTime.now(),
                  );
                }
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

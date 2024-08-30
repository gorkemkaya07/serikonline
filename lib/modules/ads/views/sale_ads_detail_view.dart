import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/core/theme/app_colors.dart';
import 'package:serikonline/core/theme/app_theme.dart';
import 'package:serikonline/core/widgets/custom_app_bar/custom_app_bar_widget.dart';
import 'package:serikonline/core/widgets/custom_card_description/custom_card_description_widget.dart';
import 'package:serikonline/core/widgets/custom_card_title/custom_card_title_widget.dart';
import 'package:serikonline/core/widgets/section_title/section_title_widget.dart';
import 'package:serikonline/core/widgets/time_ago/time_ago_widget.dart';
import 'package:serikonline/modules/news/widgets/slider/custom_slider_widget.dart';

import '../controllers/sale_ads_detail_controller.dart';

class SaleAdsDetailView extends GetView<SaleAdsDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SectionTitleWidget(title: 'İlan Detayı', showAll: false),
                Row(
                  children: [
                    Text('Kökez', style: AppTheme.cardDescription.copyWith(color: AppColors.primary)),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Icon(Icons.circle, size: 5, color: AppColors.normalgray),
                    ),
                    TimeAgoWidget(dateTime: DateTime(2024, 5, 12)),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: CustomSliderWidget(controller: controller),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomCardTitle(title: 'Açıklama'),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  decoration: BoxDecoration(color: AppColors.lightGreen, borderRadius: BorderRadius.circular(6)),
                  child: Text(
                    '5.000 TL',
                    style: AppTheme.cardTitle.copyWith(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 20, right: 20,bottom: 75),
            child: CustomCardDescription(
                description:
                    'OUTLET BEYAZ EŞYA VE TELEVİZYON SEKTÖRÜNDE EN İDDİALI EN UYGUN FİYATLARLA LİDER FİRMA !!!HESAPLI OUTLET TV BEYAZ EŞYA !!! İSTANBUL DIŞINA GÖNDERİMİMİZ YOKTUR DEFOLU ÜRÜN VE OUTLET ÜRÜNLER İŞİNİN UZMANI KURUMSAL FİRMALARDAN ALINIR.FİRMAMIZ 30 YILI AŞKIN GEÇMİŞİ İLE ÖNCE KARŞILIKLI GÜVENİ İŞİN MERKEZİNE KOYARAK SİZ DEĞERLİ MÜŞTERİLERİMİZE HİZMET VERMEKTEDİR. TÜM ÜRÜNLERİMİZ RESMİ GARANTİLİ SIFIR ÜRÜNLER OLUP DEFOLU VE DEFOSUZ OLARAK SINIFLANDIRILARAK GÜNCEL PİYASA FİYATLARINA GÖRE EN UYGUN FİYATLAR BELİRLENEREK SATIŞA SUNULMAKTADIR. ÜRÜNLERİMİZİ MAĞAZALARIMIZDA GELİP GÖREREK GÜVENLİ BİR ŞEKİLDE ALIŞVERİŞİNİZİ YAPABİLİRSİNİZ. ÜRÜNLERİMİZİN İSTANBUL İÇİ SERVİS TARAFINDAN ÜCRETSİZ KURULUM VE MONTAJI YAPILMAKTADIR. FİRMAMIZ HAFTASONLARI AÇIK OLUP HAFTANIN 7 GÜNÜ SABAH 10.00 AKŞAM 20.00 ARASI HİZMET VERMEKTEDİR. FİRMAMIZDA TÜM KREDİ KARTLARI GEÇERLİDİR VE TAKSİT UYGULAMASI YAPILMAKTADIR. ÜRÜN STOKLARIMIZ SAATLİK DEĞİŞMEKTE OLUP STOK BİLGİSİ SORMANIZI TAVSİYE EDERİZ. DEFOLU ÜRÜNLER DEFO DURUMUNA GÖRE FİYATTA DEĞİŞKENLİK GÖSTEREBİLİR.',
                lines: 50),

          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){},label: Text('HEMEN ARA',style: AppTheme.cardTitle.copyWith(color: Colors.white),),backgroundColor: AppColors.primary,icon: Icon(Icons.phone,color: Colors.white,size: 18,),),
    );
  }
}

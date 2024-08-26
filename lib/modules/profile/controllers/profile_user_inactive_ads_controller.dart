import 'package:get/get.dart';

import '../../../data/models/ads_model.dart';

class ProfileUserInActiveAdsController extends GetxController {
  final List<AdsModel> adsList = [];
  @override
  void onInit() {
    super.onInit();
    fetchAds();
  }

  void fetchAds() {
    adsList.addAll([
      AdsModel(
          '5 Yıldızlı otelde Garson Arayışımız vardır.',
          'Otelimiz bünyesinde ingilizce ve rusça dil bilgisine sahip, F&B departmanında çalışmak üzere Garson arayışımız vardır.',
          'Belek',
          'job',
          '3453532',
          47,
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQepB_Oy1wLeXcq3pJRLy_VQ7MIZfZvNAZknA&s',
          null,
          'Papillon Ayscha hotel',
          false),
      AdsModel(
          '2. El Inventer Klima',
          'İkinci el inventer klima satıyoruz. Fiyat çok uygun.',
          'Akçaalan',
          'sales',
          '43243GD2',
          150,
          'https://klimaci.com/images/thumbs/0001996_carrier-xpower-fresh-24-duvar-tipi-inverter-split-klima_1000.jpeg',
          10.000,
          'Görkem Kaya',
          false),
    ]);
  }
}

import 'package:get/get.dart';

import '../../../data/models/ads_model.dart';

class JobAdsController extends GetxController {
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
          true),
      AdsModel(
          'B2 Ehliyetli Kurye',
          'Ömer Usta Çiğköftecisi bünyesinde 9-6 Çalışacak Kurye arayışımız vardır. B2 Ehliyet şartımızdır.',
          'Merkez',
          'job',
          '3453532',
          103,
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuNlQC0ETwWQ5B6wo8Y_gEy7V6DuceiMCWow&s',
          null,
          'Çiğköfteci Ömer Usta',
          true),
    ]);
  }
}

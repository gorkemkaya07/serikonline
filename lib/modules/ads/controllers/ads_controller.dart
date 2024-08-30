import 'package:get/get.dart';

import '../../../data/models/menu_card_model.dart';

class AdsController extends GetxController {
  final List<MenuCardModel> list = [];

  @override
  void onInit() {
    fetchMenuList();
    super.onInit();
  }

  void fetchMenuList() {
    list.addAll([
      MenuCardModel(
        title: 'İş İlanları',
        description:
            'İlçemizde bulunan iş ilanlarını buradan inceleyebilirsiniz.',
        imageUrl:
            'https://img.freepik.com/premium-vector/visually-appealing-flat-illustration-job-ads_203633-6435.jpg',
            route: '/job_ads'
      ),
      MenuCardModel(
        title: '2.El Alışveriş',
        description:
            '2. El ürünleri alabilir ve satabilirsiniz. ',
        imageUrl:
            'https://w7.pngwing.com/pngs/7/39/png-transparent-shopping-cart-illustration-a-woman-pushing-a-shopping-cart-blue-business-woman-furniture.png',
            route: '/sale_ads'
      ),
    ]);
  }
}

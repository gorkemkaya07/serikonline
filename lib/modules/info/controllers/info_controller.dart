import 'package:get/get.dart';
import 'package:serikonline/data/models/menu_card_model.dart';

class InfoController extends GetxController {
  final List<MenuCardModel> list = [];
  @override
  void onInit() {
    fetchMenuList();
    super.onInit();
  }

  void fetchMenuList() {
    list.addAll([
      MenuCardModel(
        title: 'Nöbetçi Eczaneler',
        description:
            'Normal çalışma saatleri dışında hizmet veren ve acil ilaç ihtiyaçlarını karşılayan nöbetçi eczaneler günlük olarak güncellenmektedir.',
        imageUrl:
            'https://eskisehirnet.teimg.com/crop/1280x720/eskisehir-net/uploads/2023/08/sdf-nobetci-eczane.png',
            route:'/info_on_duty_pharmacy'
      ),
            MenuCardModel(
        title: 'Hal Fiyatları',
        description:
            'Tarım ürünleri ve diğer perakende ürünlerin toptan satış fiyatları günlük olarak güncellenmektedir.',
        imageUrl:
            'https://static.daktilo.com/sites/685/uploads/2022/10/28/large/hal-fiyatlari-1666947001.jpg',
            route: '/info_market_prices'
      ),
            MenuCardModel(
        title: 'Döviz Kuru',
        description:
            'Normal çalışma saatleri dışında hizmet veren ve acil ilaç ihtiyaçlarını karşılayan nöbetçi eczaneler günlük olarak güncellenmektedir.',
        imageUrl:
            'https://static.daktilo.com/sites/1059/uploads/2024/06/20/large/pexels-pixabay-164527-1717427634.webp',
            route: '/info_currency_exchange_rates'
      ),
               MenuCardModel(
        title: 'Otobüs Sefer Ücretleri',
        description:
            'Serik-Antalya, Serik-Belek, Serik-Boğazkent, Serik-Manavgat, Serik-Alanya gibi otobüs seferlerinin güncel ücretleri listelenmektedir',
        imageUrl:
            'https://www.mercedes-benz-bus.com/content/dam/mbo/markets/tr_TR/brand/about-us/images/teaser/Hakk%C4%B1m%C4%B1zda_teaser_191205.jpg',
            route: '/info_bus_prices'
      ),
    ]);
  }
}

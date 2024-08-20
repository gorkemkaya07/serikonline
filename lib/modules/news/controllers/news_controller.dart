import 'package:get/get.dart';
import 'package:serikonline/data/models/news_card_model.dart';

class NewsController extends GetxController {
  final List<NewsModel> news = [];

  @override
  void onInit() {
    fetchNews();
    super.onInit();
  }

  void fetchNews() {
    news.addAll([
      NewsModel(
        imageUrl: 'https://via.placeholder.com/300x300.png',
        title: "Serik'te Büyük Çevre Etkinliği",
        description:
            'Serik ilçesinde düzenlenen çevre etkinliği büyük ilgi gördü. Etkinlikte çeşitli atölyeler ve seminerler gerçekleştirildi.',
        timeAgo: '5 dakika önce',
        locality: 'Belek Mah.',
      ),
      NewsModel(
        imageUrl: 'https://via.placeholder.com/300x300.png',
        title: 'Serik İlçesinde Yeni Konut Projeleri',
        description:
            'Serik ilçesinde konut projeleri hızla ilerliyor. Yeni konut projeleri bölgeye değer katacak ve konut ihtiyacını karşılayacak.',
        timeAgo: '15 dakika önce',
        locality: 'Kadriye Mah.',
      ),
      NewsModel(
        imageUrl: 'https://via.placeholder.com/300x300.png',
        title: 'Serik Sıcak Hava Dalgasının Etkisi Altında',
        description:
            'Serik ilçesinde sıcak hava dalgası etkisini sürdürüyor. Vatandaşlar, sıcağa karşı çeşitli önlemler alıyor.',
        timeAgo: '30 dakika önce',
        locality: 'Aksu Mah.',
      ),
      NewsModel(
        imageUrl: 'https://via.placeholder.com/300x300.png',
        title: 'Serik’te Sağlık Tarama Günleri Başladı',
        description:
            'Serik ilçesinde sağlık tarama günleri başladı. Vatandaşlar, çeşitli sağlık testlerinden geçerek sağlık durumlarını kontrol ettiriyor.',
        timeAgo: '1 saat önce',
        locality: 'Şükrü Paşa Mah.',
      ),
      NewsModel(
        imageUrl: 'https://via.placeholder.com/300x300.png',
        title: 'Serik Festivaline Yoğun İlgi',
        description:
            'Serik ilçesinde düzenlenen festival büyük bir kalabalık tarafından ziyaret edildi. Festivalde çeşitli etkinlikler ve konserler yapıldı.',
        timeAgo: '2 saat önce',
        locality: 'Belek Mah.',
      ),
    ]);
  }
}

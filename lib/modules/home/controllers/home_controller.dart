import 'package:get/get.dart';
import 'package:serikonline/data/models/menu_card_model.dart';
import 'package:serikonline/data/models/news_card_model.dart';
import '../../../data/models/home_story_model.dart';

class HomeController extends GetxController {
  final List<HomeStoryModel> stories = [];
  final List<NewsModel> news = [];
  final List<MenuCardModel> info = [];

  @override
  void onInit() {
    fetchStory();
    fetchNews();
    fetchInfo();
    super.onInit();
  }

  void fetchStory() {
    stories.addAll([
      HomeStoryModel(
        imageUrl:
            'https://trthaberstatic.cdn.wp.trt.com.tr/resimler/2244000/kaza-aa-2245128.jpg',
        title: 'Akçaalanda Kaza',
      ),
      HomeStoryModel(
        imageUrl:
            'https://admin.agos.com.tr/Upload/Agos/Images/izmir%20kars%C4%B1yaka%20yang%C4%B1n.jpg',
        title: 'Sarıabada yangın',
      ),
      HomeStoryModel(
        imageUrl: 'https://pbs.twimg.com/media/DFvwuGeXUAARKba.jpg:large',
        title: 'Nöbetçi Eczaneler yayınlandı',
      ),
      HomeStoryModel(
        imageUrl:
            'https://trthaberstatic.cdn.wp.trt.com.tr/resimler/2266000/erdogan-aa-2267977.jpg',
        title: 'Başkana ziyaret',
      ),
      HomeStoryModel(
        imageUrl:
            'https://www.gercekhaberci.com/images/haberler/2024/05/rekor-sonrasi-dusus-herkesi-sok-etmisti-altin-fiyatlari-icin-senaryo-degisti-sinyaller-vermeye-basladi-3551.jpg',
        title: 'Altında büyük artış',
      )
    ]);
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
        locality: 'Boğazkent Mah.',
      ),
      NewsModel(
        imageUrl: 'https://via.placeholder.com/300x300.png',
        title: 'Serik’te Sağlık Tarama Günleri Başladı',
        description:
            'Serik ilçesinde sağlık tarama günleri başladı. Vatandaşlar, çeşitli sağlık testlerinden geçerek sağlık durumlarını kontrol ettiriyor.',
        timeAgo: '1 saat önce',
        locality: 'Akçaalan Mah.',
      ),
      NewsModel(
        imageUrl: 'https://via.placeholder.com/300x300.png',
        title: 'Serik Festivaline Yoğun İlgi',
        description:
            'Serik ilçesinde düzenlenen festival büyük bir kalabalık tarafından ziyaret edildi. Festivalde çeşitli etkinlikler ve konserler yapıldı.',
        timeAgo: '2 saat önce',
        locality: 'Merkez Mah.',
      ),
    ]);
  }

  void fetchInfo() {
    info.addAll([
      MenuCardModel(
        title: 'Nöbetçi Eczaneler',
        description:
            'Normal çalışma saatleri dışında hizmet veren ve acil ilaç ihtiyaçlarını karşılayan nöbetçi eczaneler günlük olarak güncellenmektedir.',
        imageUrl: 'https://via.placeholder.com/150',
      ),
      MenuCardModel(
        title: 'Hal Fiyatları',
        description:
            'Tarım ürünleri ve diğer perakende ürünlerin toptan satış fiyatları günlük olarak güncellenmektedir.',
        imageUrl: 'https://via.placeholder.com/150',
      ),
      MenuCardModel(
        title: 'Otobüs Sefer Ücretleri',
        description:
            'Serik-Antalya, Serik-Belek, Serik-Boğazkent, Serik-Manavgat, Serik-Alanya gibi otobüs seferlerinin güncel ücretleri listelenmektedir',
        imageUrl: 'https://via.placeholder.com/150',
      ),
    ]);
  }
}

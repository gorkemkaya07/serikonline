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
        imageUrl:
            'https://image.milimaj.com/i/milliyet/75/869x477/66c5e64c481b65014b092a59.jpg',
        title: "Serik'te kan donduran olay!",
        description:
            "Antalya'da bir düğünde eski Serik Belediyesi Başkan Yardımcısı Ziya Yıldırım'ın (63), eski ilçe belediye meclis üyesi Hasan Ali Tuncer'i (40) tabanca ile vurup öldürdüğü olayın nedeni ortaya çıktı.Olay, 18 Ağustos'ta saat 21.00 sıralarında Serik ilçesi Belkıs Mahallesi'nde meydana geldi. 2019- 2024 yılları arasında Serik Belediyesi'nde başkan yardımcılığı ve MHP'den meclis üyeliği yapan Ziya Yıldırım ile aynı tarihte yine MHP'den meclis üyesi olan Hasan Ali Tuncer arasında düğünde tartışma çıktı.Tartışma sırasında Yıldırım, ruhsatlı tabancasıyla 1 el ateş etti. Yaralanan Tuncer uzaklaşmaya çalışırken Yıldırım, 2 kez de arkasından ateş etti. Olay yerinde bir vatandaş, Yıldırım'a arkasından sarılarak durdurdu, başka bir kişi de elinden silahı aldı. Tuncer'e ilk müdahale, düğündeki bir doktor tarafından yapıldı.",
        timeAgo: '5 dakika önce',
        locality: 'Belkıs Mah.',
      ),
      NewsModel(
        imageUrl:
            'https://www.serikpostasi.com/resimler/2024-8/22/54900665921885.webp',
        title: 'ATATÜRK CADDESİ TRAKTÖR GALERİSİ Mİ OLDU',
        description:
            "İlçenin en çok kullanılan caddesi olan Atatürk caddesi her geçen gün iyiye gideceğine kötüye gitmeye başladı. Ne olacak bu caddenin sonu. İnsanlar araçlarını park edecek yer bulamazlarken, kaldırımlardan da yürüyemez hale geldi.PTT Şubesi park alanını komple parselledi. Bütün araçları PTT karşısındaki otopark ta. Orayı PTT bütün araçlarını park etsin diye yapılmadı. Sen kendi otoparkını kiraya veriyorsun, sonrada vatandaşların park edecekleri alana bütün araçlarını park ediyorsun. Vatandaşlar bu konudan çok rahatsız. Zaten tek sıra araç park etsen bile sıkıntı varken, bu şekilde sıkıntı haddinden fazla halde. Bu soruna artık bir dur denilmesi gerekiyor sanırım. BANKALAR TRAKTÖR GALERİCİLİĞİNE Mİ BAŞLADI Gelelim bankalar önündeki kaldırımlara, artık bankalarda galericilik işine başladı sanırım. Her bankanın önünde traktörler kaldırımları işgal etmiş vaziyette. Tamam traktör kredisi veriyorsunuz onu anladık ta traktörün kendisinin bankanın önünde işi ne kaldırımı neden işgal ediyor. Traktörün resmini as camına insanlar oradan görsünler. Kaldırın traktörleri kaldırımlardan da vatandaşlar rahat rahat yürüsünler.",
        timeAgo: '15 dakika önce',
        locality: 'Merkez Mah.',
      ),
      NewsModel(
        imageUrl:
            'https://www.serikpostasi.com/resimler/2024-8/20/41611086012189.webp',
        title: 'Serik’te ABD vatandaşı otelde ölü bulundu',
        description:
            "Serik ilçesinde 5 yıldızlı bir otele tatil için gelen ABD vatandaşı otelde ölü bulundu. Serik ilçesi Belek Turizm merkezinde bulunan 5 yıldızlı bir otele tatil için gelen ABD vatandaşı Aleksandr İvanoviç (55) dün gece saat 22.00 sıralarında otel personeli tarafından otel odalarının bulunduğu koridorda yerde yatar vaziyette bulundu.Otel çalışanlarının ihbarı üzerine olay yerine sağlık ve polis ekipleri sevk edildi.Sağlık ekipleri ilk müdahalenin ardından İvanoviç’in öldüğünü belirledi. İvanoviç’in cenazesi Cumhuriyet savcısının ilk incelemesinin ardından Adli Tıp Kurumuna gönderildi. Polis ölüm sebebinin kalp krizi olduğu ihtimali üzerinde duruyor. Polisin olayla ilgili incelemesi sürüyor.",
        timeAgo: '30 dakika önce',
        locality: 'Belek Mah.',
      ),
      NewsModel(
        imageUrl:
            'https://www.serikpostasi.com/resimler/2024-8/19/85371260961115.webp',
        title: 'Serik FK 2. Hazırlık maçını da 3-0 kazandı',
        description:
            "TFF 2. Lig kırmızı grupta mücadele eden Serik Belediyesporun 3. Etap Afyonkarahisar kampı devam ediyor. Teknik Direktör Aziz Gökhan Geylani yönetiminde 3. Etap kamp çalışmalarını Afyonkarahisar da sürdüren Serik FK, 3. Lig ekiplerinden Eti Gübre Mazıdağı spor ile hazırlık maçı yaptı. Serik FK, 7. Dakikada Berk İsmail Ünsal, 39. Dakikada Cem Ekinci ve 50. Dakikada  Alihan Kubalas’ın attığı gollerle maçı 3-0 kazandı. Serik FK Afyon kampının ardından 1 Eylül Pazar günü saat 16.30 da TCDD Ankara Demirspor stadından Ankara Demirspor karşısında ligin ilk maçına çıkacak.",
        timeAgo: '1 saat önce',
        locality: 'Akçaalan Mah.',
      ),
      NewsModel(
        imageUrl:
            'https://www.serikpostasi.com/resimler/2024-8/17/56348754975077.webp',
        title: 'Serik’te çıkan orman yangını söndürüldü',
        description:
            'Antalya’nın Serik ilçesinde ormanlık alanda çıkan yangın söndürüldü. Yangın gece saat 23.00 sıralarında Serik ilçesi Sarıabalı mahallesi Terziler mevkiinde bulunan ormanlık alanda bilinmeyen bir nedenle yangın çıktı. Çevrede oturan mahalle sakinlerinin ihbarı üzerine olay yerine Büyükşehir belediyesi itfaiye, Orman İşletme Müdürlüğüne ait arasözler ile Jandarma ekipleri sevk edildi. Yangına Orman işletme müdürlüğünden 9 arasöz, 4 su tankeri, 1 dozer, 1 kepçe, 4 ilk müdahale aracı, 70 yangın söndürme personeli, Büyükşehir belediyesine ait 2 itfaiye ile 2 su tankeri müdahale etti. Yangın ekiplerin müdahalesi sonucu 3 saatte söndürüldü. Yangında 0.5 hektar ormanlık alan, 5 dönüm zeytin ve meyve bahçesi ile bahçe içerisinde bulunan bir baraka yanarak zarar gördü. Yangın yakında bulunan ev ve seralara sıçramadan söndürülürken, evlerde oturan vatandaşlar büyük tedirginlik yaşadı. Vatandaşlar da yangının evlerine sıçramaması için ilaçlama motoru ve hortumlarla yangına müdahale etti. Orman İşletme Müdürü Hüseyin Oğuzhan Okudan, AK Parti Serik İlçe Başkanı Ahmet Söker ile MHP Serik ilçe başkanı Osman Üstünmet’te yangın yerinde incelemelerde bulundu. Yangın hakkında bilgi veren Sarıabalı mahallesi sakinlerinden Ramazan Büyükdeligöz, “Gece çocuklar yangın var diye seslendi. Dışarıya çıktım ağaçlar birden alev aldı. Ne olduğunu bende bilemedim. Arasözler geldi yangına müdahale etti. Yangını söndürdüler.” Diyerek konuştu.',
        timeAgo: '2 saat önce',
        locality: 'Sarıabalı Mah.',
      ),
    ]);
  }

  void fetchInfo() {
    info.addAll([
      MenuCardModel(
        title: 'Nöbetçi Eczaneler',
        description:
            'Normal çalışma saatleri dışında hizmet veren ve acil ilaç ihtiyaçlarını karşılayan nöbetçi eczaneler günlük olarak güncellenmektedir.',
        imageUrl:
            'https://eskisehirnet.teimg.com/crop/1280x720/eskisehir-net/uploads/2023/08/sdf-nobetci-eczane.png',
      ),
      MenuCardModel(
        title: 'Hal Fiyatları',
        description:
            'Tarım ürünleri ve diğer perakende ürünlerin toptan satış fiyatları günlük olarak güncellenmektedir.',
        imageUrl:
            'https://static.daktilo.com/sites/685/uploads/2022/10/28/large/hal-fiyatlari-1666947001.jpg',
      ),
      MenuCardModel(
        title: 'Otobüs Sefer Ücretleri',
        description:
            'Serik-Antalya, Serik-Belek, Serik-Boğazkent, Serik-Manavgat, Serik-Alanya gibi otobüs seferlerinin güncel ücretleri listelenmektedir',
        imageUrl:
            'https://www.mercedes-benz-bus.com/content/dam/mbo/markets/tr_TR/brand/about-us/images/teaser/Hakk%C4%B1m%C4%B1zda_teaser_191205.jpg',
      ),
    ]);
  }
}

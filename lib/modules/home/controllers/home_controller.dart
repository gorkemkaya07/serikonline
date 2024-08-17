import 'package:get/get.dart';
import '../widgets/story/models/home_story_model.dart';

class HomeController extends GetxController {
  final List<HomeStoryModel> stories = [
    HomeStoryModel(
      imageUrl: 'https://trthaberstatic.cdn.wp.trt.com.tr/resimler/2244000/kaza-aa-2245128.jpg',
      title: 'Akçaalanda Kaza',
    ),
    HomeStoryModel(
      imageUrl: 'https://admin.agos.com.tr/Upload/Agos/Images/izmir%20kars%C4%B1yaka%20yang%C4%B1n.jpg',
      title: 'Sarıabada yangın',
    ),
    HomeStoryModel(
      imageUrl: 'https://pbs.twimg.com/media/DFvwuGeXUAARKba.jpg:large',
      title: 'Nöbetçi Eczaneler yayınlandı',
    ),
    HomeStoryModel(
      imageUrl: 'https://trthaberstatic.cdn.wp.trt.com.tr/resimler/2266000/erdogan-aa-2267977.jpg',
      title: 'Başkana ziyaret',
    ),
    HomeStoryModel(
      imageUrl: 'https://www.gercekhaberci.com/images/haberler/2024/05/rekor-sonrasi-dusus-herkesi-sok-etmisti-altin-fiyatlari-icin-senaryo-degisti-sinyaller-vermeye-basladi-3551.jpg',
      title: 'Altında büyük artış',
    ),
  ];
}

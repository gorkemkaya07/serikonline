import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/models/profile_comments_model.dart';

class NewsDetailController extends GetxController {
  final id = Get.arguments;
  final List<ProfileCommentsModel> commentList = [];
  final List<String> imgList = [
    'https://pbs.twimg.com/amplify_video_thumb/1828847386359123968/img/KZgH_oUiTBOLj9mk.jpg',
    'https://www.haberantalya.com/images/haberler/2024/08/akdeniz-de-4-ulkenin-turizmde-100-milyar-dolar-yarisi-8654-d.jpg',
    'https://m.gunhaber.com.tr/haber_resim/Antalya-da-guneslenirken-uzerine-dustu-541262t.jpg',
  ];
  var currentPage = 0.obs;
  final PageController pageController = PageController();
  @override
  void onInit() {
    super.onInit();
    fetchComments();
  }

  void addComment(String comment, String userName, DateTime createdTime ) {
    commentList.add(
        ProfileCommentsModel(userName: userName, comment: comment, createdTime: createdTime, status: true, profilePictureImg: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH87TKQrWcl19xly2VNs0CjBzy8eaKNM-ZpA&s'));
  }

  void fetchComments() {
    commentList.addAll([
      ProfileCommentsModel(
        userName: 'Görkem Kaya',
        comment:
            'Bu haberi gerçekten çok ilginç buldum. Özellikle de olayların bu kadar hızlı gelişmesi beni çok şaşırttı. Gelecekte neler olacağını sabırsızlıkla bekliyorum.',
        createdTime: DateTime.parse('2024-08-26 14:15:00'),
        status: false,
        profilePictureImg: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH87TKQrWcl19xly2VNs0CjBzy8eaKNM-ZpA&s',
      ),
      ProfileCommentsModel(
        userName: 'Görkem Kaya',
        comment:
            'Bu konu hakkında daha fazla bilgiye sahip olmamız gerekiyor. Durumun ne kadar ciddi olduğunu henüz tam olarak kavrayabilmiş değiliz.',
        createdTime: DateTime.parse('2024-08-25 11:30:00'),
        status: false,
        profilePictureImg: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH87TKQrWcl19xly2VNs0CjBzy8eaKNM-ZpA&s',
      ),
      ProfileCommentsModel(
        userName: 'Görkem Kaya',
        comment: 'Haberin içeriği gerçekten de düşündürücü. Bu olayların gelecekte nasıl sonuçlanacağını merak ediyorum.',
        createdTime: DateTime.parse('2024-08-24 16:45:00'),
        status: false,
        profilePictureImg: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH87TKQrWcl19xly2VNs0CjBzy8eaKNM-ZpA&s',
      ),
      ProfileCommentsModel(
        userName: 'Görkem Kaya',
        comment: 'Bu tür olaylar gerçekten dikkat çekici. Haber kaynaklarının güvenilirliğine biraz daha dikkat etmeliyiz.',
        createdTime: DateTime.parse('2024-08-23 09:50:00'),
        status: false,
        profilePictureImg: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH87TKQrWcl19xly2VNs0CjBzy8eaKNM-ZpA&s',
      ),
      ProfileCommentsModel(
        userName: 'Görkem Kaya',
        comment: 'Konu hakkında oldukça detaylı bir haber olmuş. Ancak eksik noktalar var ve daha fazla bilgiye ihtiyaç duyuyoruz.',
        createdTime: DateTime.parse('2024-08-22 20:05:00'),
        status: false,
        profilePictureImg: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH87TKQrWcl19xly2VNs0CjBzy8eaKNM-ZpA&s',
      ),
    ]);
  }
}

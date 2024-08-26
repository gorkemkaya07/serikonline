import 'package:get/get.dart';
import '../../../data/models/profile_comments_model.dart';

class ProfileUserActiveCommentsController extends GetxController {
  final List<ProfileCommentsModel> commentList = [];
  @override
  void onInit() {
    super.onInit();
    fetchComments();
  }

  void fetchComments() {
    commentList.addAll([
      ProfileCommentsModel(
        userName: 'Görkem Kaya',
        comment:
            'Bu haberi gerçekten çok ilginç buldum. Özellikle de olayların bu kadar hızlı gelişmesi beni çok şaşırttı. Gelecekte neler olacağını sabırsızlıkla bekliyorum.',
        createdTime: DateTime.parse('2024-08-26 14:15:00'),
        status: true,
        profilePictureImg: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH87TKQrWcl19xly2VNs0CjBzy8eaKNM-ZpA&s',
      ),
      ProfileCommentsModel(
        userName: 'Görkem Kaya',
        comment:
            'Bu konu hakkında daha fazla bilgiye sahip olmamız gerekiyor. Durumun ne kadar ciddi olduğunu henüz tam olarak kavrayabilmiş değiliz.',
        createdTime: DateTime.parse('2024-08-25 11:30:00'),
        status: true,
        profilePictureImg: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH87TKQrWcl19xly2VNs0CjBzy8eaKNM-ZpA&s',
      ),
      ProfileCommentsModel(
        userName: 'Görkem Kaya',
        comment: 'Haberin içeriği gerçekten de düşündürücü. Bu olayların gelecekte nasıl sonuçlanacağını merak ediyorum.',
        createdTime: DateTime.parse('2024-08-24 16:45:00'),
        status: true,
        profilePictureImg: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH87TKQrWcl19xly2VNs0CjBzy8eaKNM-ZpA&s',
      ),
      ProfileCommentsModel(
        userName: 'Görkem Kaya',
        comment: 'Bu tür olaylar gerçekten dikkat çekici. Haber kaynaklarının güvenilirliğine biraz daha dikkat etmeliyiz.',
        createdTime: DateTime.parse('2024-08-23 09:50:00'),
        status: true,
        profilePictureImg: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH87TKQrWcl19xly2VNs0CjBzy8eaKNM-ZpA&s',
      ),
      ProfileCommentsModel(
        userName: 'Görkem Kaya',
        comment: 'Konu hakkında oldukça detaylı bir haber olmuş. Ancak eksik noktalar var ve daha fazla bilgiye ihtiyaç duyuyoruz.',
        createdTime: DateTime.parse('2024-08-22 20:05:00'),
        status: true,
        profilePictureImg: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH87TKQrWcl19xly2VNs0CjBzy8eaKNM-ZpA&s',
      ),
    ]);
  }
}

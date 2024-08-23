import 'package:get/get.dart';
import 'package:serikonline/data/models/profile_menu_model.dart';

class ProfileController extends GetxController {
  final List<ProfileMenuModel> profileMenuList = [];
  @override
  void onInit() {
    super.onInit();
    fetchProfileMenuList();
  }

  void fetchProfileMenuList() {
    profileMenuList.addAll([
      ProfileMenuModel('Kullanıcı Bilgileri', '/profile_user_info'),
      ProfileMenuModel('Kullanıcı ilanları', '/profile_user_ads'),
      ProfileMenuModel('CV Bilgileri', '/profile_user_cv'),
      ProfileMenuModel('Kullanıcı Yorumları', '/profile_user_comments'),
      ProfileMenuModel('Bildirim Ayarları', '/profile_notification_settings'),
      ProfileMenuModel('Bize Ulaşın', '/profile_contact_us')
    ]);
  }
}

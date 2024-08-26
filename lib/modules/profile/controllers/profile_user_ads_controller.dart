import 'package:get/get.dart';
import '../../../data/models/profile_menu_model.dart';

class ProfileUserAdsController extends GetxController {
  final List<ProfileMenuModel> profileMenuList = [];
  @override
  void onInit() {
    super.onInit();
    fetchProfileMenuList();
  }

  void fetchProfileMenuList() {
    profileMenuList.addAll([
      ProfileMenuModel('Yayında olanlar', '/profile_user_active_ads'),
      ProfileMenuModel('Yayında olmayanlar', '/profile_user_inactive_ads'),
    ]);
  }
}

import 'package:get/get.dart';

import '../controllers/info_on_duty_pharmacy_controller.dart';

class InfoOnDutyPharmacyBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InfoOnDutyPharmacyController>(() => InfoOnDutyPharmacyController());
  }
}

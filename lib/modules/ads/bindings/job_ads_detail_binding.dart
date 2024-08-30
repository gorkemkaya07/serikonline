import 'package:get/get.dart';

import '../controllers/job_ads_detail_controller.dart';

class JobAdsDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JobAdsDetailController>(() => JobAdsDetailController());
  }
}

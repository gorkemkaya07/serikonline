import 'package:get/get.dart';

import '../controllers/job_ads_controller.dart';

class JobAdsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JobAdsController>(() => JobAdsController());
  }
}

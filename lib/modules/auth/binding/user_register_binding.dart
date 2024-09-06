import 'package:get/get.dart';

import '../controller/user_register_controller.dart';

class UserRegisterBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<UserRegisterController>(() => UserRegisterController(
     ));
  }
}
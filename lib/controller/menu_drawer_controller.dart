import 'package:get/get.dart';
import 'package:belajarflutter/routes.dart';

class MenuDrawerController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void Home() {
    selectedIndex.value = 0;
    Get.toNamed(Routes.home);
  }

  void History() {
    selectedIndex.value = 1;
    Get.toNamed(Routes.history);
  }

  void Profile() {
    selectedIndex.value = 2;
    Get.toNamed(Routes.profile);
  }
}
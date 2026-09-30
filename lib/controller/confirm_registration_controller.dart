import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ConfirmRegistrationController extends GetxController {
  late String nama;
  late String email;
  late String password;
  late String alamat;
  late String hp;

  
  @override
  void onInit() {

    super.onInit();
    final arguments = Get.arguments; // menangkap data dari tampilan sebelumnya
    nama = arguments['nama'];
    email = arguments['email'];
    password = arguments['password'];
    alamat = arguments['alamat'];
    hp = arguments['hp'];
  }

}
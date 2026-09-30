import 'package:belajarflutter/pages/confirm_registration_page.dart';
import 'package:belajarflutter/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  // list pages ynag ada di dalam aplikasi kita

  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmRegistration";
  // login, kalkulator, dll

  // kita tampung kedalam array yang akan kita pasang ke main dart

  static final myPages = [
    GetPage(name: registration, page:() => RegistrationPage()),
    GetPage(name: confirmRegistration, page:() => ConfirmRegistrationPage()),
    // others page here etc 
  ];
}
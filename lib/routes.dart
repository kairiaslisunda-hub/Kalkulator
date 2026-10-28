import 'package:belajarflutter/menu/history.dart';
import 'package:belajarflutter/menu/home.dart';
import 'package:belajarflutter/menu/profile.dart';
import 'package:belajarflutter/pages/confirm_registration_page.dart';
import 'package:belajarflutter/pages/detail_produk_page.dart';
import 'package:belajarflutter/pages/registration_page.dart';
import 'package:belajarflutter/pages/list_produk_page.dart';
import 'package:belajarflutter/pages/main_menu_page.dart';
import 'package:get/get.dart';

class Routes {
  // list pages ynag ada di dalam aplikasi kita

  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmRegistration";
  static const String listProduk = "/listProduk";
  static const String detailProduk = "/detailProduk";
  static const String mainMenu = "/mainMenu";
  static const String home = "/home";
  static const String history = "/history";
  static const String profile = "/profile";
  // login, kalkulator, dll

  // kita tampung kedalam array yang akan kita pasang ke main dart

  static final myPages = [
    GetPage(name: registration, page:() => RegistrationPage()),
    GetPage(name: confirmRegistration, page:() => ConfirmRegistrationPage()),
    GetPage(name: listProduk, page:() => ListProdukPage()),
    GetPage(name: detailProduk, page:() => DetailProdukPage()),
    GetPage(name: mainMenu, page:() => MainMenuPage()),
    GetPage(name: home, page:() => HomePage()),
    GetPage(name: history, page:() => HistoryPage()),
    GetPage(name: profile, page:() => ProfilePage()),
    // others page here etc 
  ];
}
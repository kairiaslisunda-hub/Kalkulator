import 'package:belajarflutter/menu/history.dart';
import 'package:belajarflutter/menu/home.dart';
import 'package:belajarflutter/menu/profile.dart';
import 'package:belajarflutter/pages/confirm_registration_page.dart';
import 'package:belajarflutter/pages/detail_produk_page.dart';
import 'package:belajarflutter/pages/registration_page.dart';
import 'package:belajarflutter/pages/list_produk_page.dart';
import 'package:belajarflutter/pages/main_menu_page.dart';
import 'package:belajarflutter/pages/login_clone_fix.dart';
import 'package:belajarflutter/pages/menu_drawer.dart';
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
  static const String loginClone = "/loginClone";
  static const String mainMenuPage = "/mainMenuPage";
  static const String menuDrawer = "/menuDrawer";
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
    GetPage(name: loginClone, page:() => LoginCloneFix()),
    GetPage(name: mainMenuPage, page:() => MainMenuPage()), 
    GetPage(name: menuDrawer, page:() => MenuDrawer()),
    // others page here etc 
  ];
}
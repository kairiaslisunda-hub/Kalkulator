import 'package:belajarflutter/menu/history.dart';
import 'package:belajarflutter/menu/home.dart';
import 'package:belajarflutter/menu/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

   List<Widget> listPages = [
    const HomePage(),
    const HistoryPage(),
    const ProfilePage(),
  ];

}
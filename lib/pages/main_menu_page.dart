import 'package:belajarflutter/controller/main_menu_controller.dart';
import 'package:belajarflutter/menu/history.dart';
import 'package:belajarflutter/menu/home.dart';
import 'package:belajarflutter/menu/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class MainMenuPage extends StatelessWidget {
   MainMenuPage({super.key});

  final MenuController = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body: IndexedStack(
        index: MenuController.selectedIndex.value, 
        children: MenuController.listPages),
      //   bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: MenuController.selectedIndex.value,
      //   onTap: (index) {
      //     MenuController.changePage(index);
      //   },
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home), 
      //       label: "Home"),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.history), 
      //       label: "History"),  
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person), 
      //       label: "Profile"),
      //   ]
      // )
    ));
  }
}
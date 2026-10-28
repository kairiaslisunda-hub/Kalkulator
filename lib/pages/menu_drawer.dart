import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajarflutter/controller/menu_drawer_controller.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MenuDrawerController());

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue[700],
            ),
            accountName: const Text('User'),
            accountEmail: const Text(''),
            currentAccountPicture: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                size: 40,
                color: Colors.blue,
              ),
            ),
          ),

          Obx(() => ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                selected: controller.selectedIndex.value == 0,
                selectedTileColor: Colors.blue[100],
                onTap: () {
                  Navigator.pop(context);
                  controller.Home();
                },
              )),

          Obx(() => ListTile(
                leading: const Icon(Icons.history),
                title: const Text('History'),
                selected: controller.selectedIndex.value == 1,
                selectedTileColor: Colors.blue[100],
                onTap: () {
                  Navigator.pop(context);
                  controller.History();
                },
              )),

          Obx(() => ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Profile'),
                selected: controller.selectedIndex.value == 2,
                selectedTileColor: Colors.blue[100],
                onTap: () {
                  Navigator.pop(context);
                  controller.Profile();
                },
              )),
        ],
      ),
    );
  }
}
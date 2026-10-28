import 'package:belajarflutter/pages/menu_drawer.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(),

      backgroundColor: Colors.blue[50],

      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Foto Profil
              const CircleAvatar(
                radius: 55,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.person,
                  size: 65,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 15),

              // Nama
              const Text(
                "User",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
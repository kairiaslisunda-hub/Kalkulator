import 'package:belajarflutter/controller/confirm_registration_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  const ConfirmRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfirmRegistrationController());

    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        elevation: 2,
        title: Text(
          "Confirm Registration",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text(
            "Registration Data",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue[800],
            ),
          ),

          SizedBox(height: 20),

          Card(
            margin: EdgeInsets.symmetric(horizontal: 30),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [

                  Text(
                    "Nama : " + controller.nama.toString(),
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.green[700],
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Email : " + controller.email.toString(),
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.green[700],
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Password : " + controller.password.toString(),
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.green[700],
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Alamat : " + controller.alamat.toString(),
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.green[700],
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "No HP : " + controller.hp.toString(),
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.green[700],
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 25),

          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(
                horizontal: 45,
                vertical: 13,
              ),
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              "Oke",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
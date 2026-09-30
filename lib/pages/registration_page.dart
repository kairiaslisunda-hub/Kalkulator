import 'package:belajarflutter/components/textfield.dart';
import 'package:belajarflutter/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtnama = TextEditingController();
    TextEditingController txtemail = TextEditingController();
    TextEditingController txtpassword = TextEditingController();
    TextEditingController txtalamat = TextEditingController();
    TextEditingController txthp = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        elevation: 2,
        title: Text(
          "Registration",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              "Welcome!",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blue[800],
              ),
            ),

            SizedBox(height: 5),

            MyTextfield(
              Myhint: "Input Nama",
              txtController: txtnama,
              radius: 10,
            ),

            SizedBox(height: 10),

            MyTextfield(
              Myhint: "Input Email",
              txtController: txtemail,
              radius: 10,
            ),

            SizedBox(height: 10),

            MyTextfield(
              Myhint: "Input Password",
              txtController: txtpassword,
              radius: 10,
            ),

            SizedBox(height: 10),

            MyTextfield(
              Myhint: "Input Alamat",
              txtController: txtalamat,
              radius: 10,
            ),

            SizedBox(height: 10),

            MyTextfield(
              Myhint: "Input No HP",
              txtController: txthp,
              radius: 10,
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  Routes.confirmRegistration,
                  arguments: {
                    "nama": txtnama.text.toString(),
                    "email": txtemail.text.toString(),
                    "password": txtpassword.text.toString(),
                    "alamat": txtalamat.text.toString(),
                    "hp": txthp.text.toString(),
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 13,
                ),
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                "Send",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
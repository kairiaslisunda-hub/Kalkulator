import 'package:flutter/material.dart';

import '../components/textfield.dart';
import '../components/textview.dart';
import '../components/button.dart';

class LoginCloneFix extends StatelessWidget {
   LoginCloneFix({super.key});

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // pindah login clone ke sini

    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [  
            const Icon(
              Icons.camera_alt,
              size: 60,
              color: Colors.pink,
            ),
            const SizedBox(height: 40),

            
            MyTextfield(
            Myhint: "Username, email or mobile number",
            txtController: usernameController,
            radius: 8.0,
            ),

            const SizedBox(height: 16),
            
            MyTextfield(
            Myhint: "Password",
            txtController: passwordController,
            radius: 8.0,
            ),

            const SizedBox(height: 16),

            MyButton(
            text: "Log in",
            color: const Color.fromARGB(255, 174, 6, 165),
            onPressed: () {},
            ),

            const SizedBox(height: 16),

            const MyTextview(
            text: "Forgot password?",
            color: Colors.white,
            fontWeight: FontWeight.bold,
            ),

            const SizedBox(height: 16),
            
            MyButton(
            text: "Create new account",
            color: Colors.grey,
            onPressed: () {},
          ),
          ],
        ),
      ),
    );
      //lalu buat reusable component
  }
}
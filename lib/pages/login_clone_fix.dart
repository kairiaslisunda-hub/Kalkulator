import 'package:belajarflutter/controller/login_clone_fix_controller.dart';
import 'package:flutter/material.dart';
import 'package:belajarflutter/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../components/textfield.dart';
import '../components/textview.dart';
import '../components/button.dart';

class LoginCloneFix extends StatelessWidget {
   LoginCloneFix({super.key});

  final controller = Get.put(LoginCloneFixController());

  // final TextEditingController usernameController = TextEditingController();
  // final TextEditingController passwordController = TextEditingController();

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
            txtController: controller.txtUsername,
            // txtController: usernameController,
            radius: 8.0,
            ),

            const SizedBox(height: 16),
            
            MyTextfield(
            Myhint: "Password",
            txtController: controller.txtPassword,
            //txtController: passwordController,
            radius: 8.0,
            ),

            const SizedBox(height: 16),

            Obx(
            ()=> controller.isLoading.value ? Center(child: CircularProgressIndicator(),) : MyButton(
            text: "Log in",
            color: const Color.fromARGB(255, 174, 6, 165),
            onPressed: () {

              controller.login();
  
                },
              ), 
            ),

            

            const SizedBox(height: 16),

            const MyTextview(
            text: "Forgot password?",
            color: Colors.white,
            fontWeight: FontWeight.bold,
            ),

            const SizedBox(height: 16),
            
          ],
        ),
      ),
    );
      //lalu buat reusable component
  }
}
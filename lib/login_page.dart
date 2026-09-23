import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  String statusLogin = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "My Login Page",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 237, 32, 32),
          ),
        ),
      ),

      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: txtUsername,
              decoration: InputDecoration(
                hintText: "Input Username",
              ),
            ),
          ),

          TextField(
            controller: txtPassword,
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Input Password",
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    String username = txtUsername.text;
                    String password = txtPassword.text;

                    if (username == "admin" && password == "admin") {
                      print("sukses login");
                      statusLogin = "sukses login admin";
                    } else {
                      print("gagal login");
                      statusLogin = "gagal login admin";
                    }
                  });
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                    const Color.fromARGB(255, 29, 88, 253),
                  ),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 39, 230, 255),
                  ),
                ),
              ),

              const SizedBox(width: 10),

              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                    const Color.fromARGB(255, 0, 113, 11),
                  ),
                ),
                child: Text(
                  "Register",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 107, 243, 49),
                  ),
                ),
              ),
            ],
          ),

          Text(
            "status login : " + statusLogin,
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
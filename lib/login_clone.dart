import 'package:flutter/material.dart';

class LoginClone extends StatefulWidget {
  const LoginClone({super.key});

  @override
  State<LoginClone> createState() => _LoginCloneState();
}

class _LoginCloneState extends State<LoginClone> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool _isPasswordHidden = true; // State untuk toggle password

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212), // Background Dark Mode IG
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white, size: 20),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              // 1. Bagian Atas & Form (Bisa di-scroll jika layar kecil)
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 10),

                      // Pilihan Bahasa
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "English (US)",
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                          Icon(Icons.keyboard_arrow_down, color: Colors.grey, size: 18),
                        ],
                      ),

                      const SizedBox(height: 60),

                      // Logo Icon Instagram / Kamera
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white12, width: 1.5),
                        ),
                        child: const Icon(
                          Icons.camera_alt_outlined,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),

                      const SizedBox(height: 50),

                      // Input Username / Email
                      TextField(
                        controller: usernameController,
                        style: const TextStyle(color: Colors.white, fontSize: 14),
                        decoration: InputDecoration(
                          labelText: "Username, email, or mobile number",
                          labelStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                          floatingLabelStyle: const TextStyle(color: Colors.white70),
                          filled: true,
                          fillColor: const Color(0xFF1E1E1E),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.white12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.white38, width: 1.5),
                          ),
                        ),
                      ),

                      const SizedBox(height: 12),

                      // Input Password + Icon Mata
                      TextField(
                        controller: passwordController,
                        obscureText: _isPasswordHidden,
                        style: const TextStyle(color: Colors.white, fontSize: 14),
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                          floatingLabelStyle: const TextStyle(color: Colors.white70),
                          filled: true,
                          fillColor: const Color(0xFF1E1E1E),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.white12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.white38, width: 1.5),
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),

                      // Tombol Log In
                      SizedBox(
                        width: double.infinity,
                        height: 46,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF0064E0), // Biru khas Meta/IG
                            foregroundColor: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(23),
                            ),
                          ),
                          child: const Text(
                            "Log in",
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),

                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Forgot password?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Column(
                children: [
                  const SizedBox(height: 12),

                  SizedBox(
                    width: double.infinity,
                    height: 46,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        foregroundColor: const Color(0xFF0064E0),
                        side: const BorderSide(color: Color(0xFF0064E0), width: 1.2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(23),
                        ),
                      ),
                      child: const Text(
                        "Create new account",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      
                      SizedBox(width: 4),
                      Text(
                        "Meta",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class kalkulator extends StatefulWidget {
  const kalkulator({super.key});

  @override
  State<kalkulator> createState() => _kalkulatorState();
}

class _kalkulatorState extends State<kalkulator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Kalkulator"),
        centerTitle: true,
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Input Teks Atas
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Angka Pertama",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),

            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Angka Kedua",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // Tombol Operasi Menyamping ke Kanan
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('+'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('-'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('×'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('÷'),
                ),
              ],
            ),
            const SizedBox(height: 30),

            // Teks Tampilan Hasil
            const Text(
              "Hasil: 0",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              child: const Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}
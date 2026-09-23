import 'package:belajarflutter/components/textfield.dart';
import 'package:belajarflutter/controller/kalkulator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KalkulatorBaru extends StatelessWidget {
  KalkulatorBaru({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtAngka1 = TextEditingController();
    TextEditingController txtAngka2 = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
          "Kalkulator",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    MyTextfield(
                      Myhint: "input angka 1",
                      txtController: txtAngka1,
                      radius: 12,
                      isNumber: true,
                    ),
                    SizedBox(height: 12),
                    MyTextfield(
                      Myhint: "input angka 2",
                      txtController: txtAngka2,
                      radius: 12,
                      isNumber: true,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    if (txtAngka1.text.isEmpty || txtAngka2.text.isEmpty) {
                      Get.snackbar(
                        "Peringatan",
                        "Harap isi semua angka",
                        snackPosition: SnackPosition.BOTTOM,
                      );
                      return;
                    }
                    controller.tambah(
                      double.parse(txtAngka1.text.toString()),
                      double.parse(txtAngka2.text.toString()),
                    );
                  },
                  child: Text("tambah"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    if (txtAngka1.text.isEmpty || txtAngka2.text.isEmpty) {
                      Get.snackbar(
                        "Peringatan",
                        "Harap isi semua angka",
                        snackPosition: SnackPosition.BOTTOM,
                      );
                      return;
                    }
                    controller.kurang(
                      double.parse(txtAngka1.text.toString()),
                      double.parse(txtAngka2.text.toString()),
                    );
                  },
                  child: Text("kurang"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    if (txtAngka1.text.isEmpty || txtAngka2.text.isEmpty) {
                      Get.snackbar(
                        "Peringatan",
                        "Harap isi semua angka",
                        snackPosition: SnackPosition.BOTTOM,
                      );
                      return;
                    }
                    controller.kali(
                      double.parse(txtAngka1.text.toString()),
                      double.parse(txtAngka2.text.toString()),
                    );
                  },
                  child: Text("kali"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    if (txtAngka1.text.isEmpty || txtAngka2.text.isEmpty) {
                      Get.snackbar(
                        "Peringatan",
                        "Harap isi semua angka",
                        snackPosition: SnackPosition.BOTTOM,
                      );
                      return;
                    }
                    controller.bagi(
                      double.parse(txtAngka1.text.toString()),
                      double.parse(txtAngka2.text.toString()),
                    );
                  },
                  child: Text("bagi"),
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    "Hasil Perhitungan:",
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                  SizedBox(height: 8),
                  Obx(
                    () => Text(
                      controller.hasil.value.toString(),
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
} 
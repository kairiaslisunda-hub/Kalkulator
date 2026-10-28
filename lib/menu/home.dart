import 'package:belajarflutter/pages/menu_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajarflutter/controller/list_produk_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ListProdukController());

    return Scaffold(
      drawer: MenuDrawer(),

      backgroundColor: Colors.blue[50],

      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Daftar Pemain Chelsea',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          GetBuilder<ListProdukController>(
            builder: (controller) {
              return SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(8),
                  itemCount: controller.ListProduk.length,

                  itemBuilder: (context, index) {
                    final produk = controller.ListProduk[index];

                    return SizedBox(
                      width: 160,
                      child: Card(
                        margin: const EdgeInsets.all(8),
                        elevation: 4,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        ),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(12),
                              ),
                              child: Image.asset(
                                produk.foto,
                                width: double.infinity,
                                height: 110,
                                fit: BoxFit.cover,
                              ),
                            ),

                            const SizedBox(height: 8),

                            Text(
                              produk.namaProduk,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 4),

                            Text(
                              produk.club,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
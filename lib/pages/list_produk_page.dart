import 'package:belajarflutter/controller/list_produk_controller.dart';
import 'package:belajarflutter/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListProdukPage extends StatelessWidget {
  ListProdukPage({super.key});

  final controller = Get.put(ListProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],

      appBar: AppBar(
        title: const Text(
          "List Pemain",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),

        child: GetBuilder<ListProdukController>(
          builder: (controller) {
            return RefreshIndicator(
              onRefresh: controller.refreshProduk,

              child: ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: controller.ListProduk.length,

                itemBuilder: (context, index) {
                  final produk = controller.ListProduk[index];

                  return Card(
                    margin: const EdgeInsets.only(bottom: 12),
                    elevation: 4,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),

                    child: ListTile(
                      contentPadding: const EdgeInsets.all(10),

                      // Tekan lama untuk menampilkan pilihan
                      onLongPress: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Wrap(
                              children: [
                                // Pilihan Detail
                                ListTile(
                                  leading: const Icon(Icons.info),
                                  title: const Text("Detail"),

                                  onTap: () {
                                    Navigator.pop(context);

                                    Get.toNamed(
                                      Routes.detailProduk,
                                      arguments: {
                                        'namaProduk': produk.namaProduk,
                                        'harga': produk.harga,
                                        'foto': produk.foto,
                                        'club': produk.club,
                                        'deskripsi': produk.deskripsi,
                                      },
                                    );
                                  },
                                ),

                                // Pilihan Hapus
                                ListTile(
                                  leading: const Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                  ),
                                  title: const Text("Hapus"),

                                  onTap: () {
                                    Navigator.pop(context);
                                     controller.hapusProduk(produk);
                                              Get.back();                                    
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },

                      leading: Image.asset(
                        produk.foto,
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),

                      title: Text(
                        produk.namaProduk,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.blue[800],
                        ),
                      ),

                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              produk.harga,
                              style: TextStyle(
                                color: Colors.blue[600],
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                "Club: ${produk.club}",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Tekan tombol panah untuk membuka detail
                      trailing: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.blue[700],
                          borderRadius: BorderRadius.circular(10),
                        ),

                        child: InkWell(
                          borderRadius: BorderRadius.circular(10),

                          onTap: () {
                            Get.toNamed(
                              Routes.detailProduk,
                              arguments: {
                                'namaProduk': produk.namaProduk,
                                'harga': produk.harga,
                                'foto': produk.foto,
                                'club': produk.club,
                                'deskripsi': produk.deskripsi,
                              },
                            );
                          },

                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
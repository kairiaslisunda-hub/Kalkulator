
import 'package:belajarflutter/controller/api_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListProdukPage extends StatelessWidget {
  ListProdukPage({super.key});

  final controller = Get.put(ApiController());

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

        child: Obx(() {
          if (controller.isLoading.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final pemainList =
              controller.chelseaModel.value?.player ?? [];

          if (pemainList.isEmpty) {
            return Center(
              child: ElevatedButton(
                onPressed: controller.getPlayers,
                child: const Text("Muat Ulang"),
              ),
            );
          }

          return RefreshIndicator(
            onRefresh: () async {
              await controller.getPlayers();
            },

            child: ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: pemainList.length,

              itemBuilder: (context, index) {
                final pemain = pemainList[index];

                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  elevation: 4,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),

                  child: ListTile(
                    contentPadding: const EdgeInsets.all(10),

                    onLongPress: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Wrap(
                            children: [
                              ListTile(
                                leading: const Icon(Icons.info),
                                title: const Text("Detail"),

                                onTap: () {
                                  Navigator.pop(context);

                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text(
                                          pemain['strPlayer'] ?? 'Pemain',
                                        ),
                                        content: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Club: ${pemain['strTeam'] ?? '-'}",
                                            ),
                                            Text(
                                              "Posisi: ${pemain['strPosition'] ?? '-'}",
                                            ),
                                            Text(
                                              "Negara: ${pemain['strNationality'] ?? '-'}",
                                            ),
                                            const SizedBox(height: 10),
                                            Text(
                                              pemain['strDescriptionEN'] ??
                                                  'Deskripsi tidak tersedia',
                                              maxLines: 5,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),

                              ListTile(
                                leading: const Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ),
                                title: const Text("Hapus"),

                                onTap: () {
                                  Navigator.pop(context);

                                  Get.snackbar(
                                    "Informasi",
                                    "Data dari API tidak dapat dihapus permanen",
                                  );
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },

                    leading: Image.network(
                      pemain['strCutout'] ?? '',
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const SizedBox(
                          width: 60,
                          height: 60,
                          child: Icon(Icons.person, size: 40),
                        );
                      },
                    ),

                    title: Text(
                      pemain['strPlayer'] ?? 'Nama tidak tersedia',
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
                            pemain['strPosition'] ?? '-',
                            style: TextStyle(
                              color: Colors.blue[600],
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              "Negara: ${pemain['strNationality'] ?? '-'}",
                              style: TextStyle(
                                color: Colors.grey[700],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    trailing: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.blue[700],
                        borderRadius: BorderRadius.circular(10),
                      ),

                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),

                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text(
                                  pemain['strPlayer'] ?? 'Detail Pemain',
                                ),
                                content: Text(
                                  pemain['strDescriptionEN'] ??
                                      'Deskripsi tidak tersedia',
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text("Tutup"),
                                  ),
                                ],
                              );
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
        }),
      ),
    );
  }
}

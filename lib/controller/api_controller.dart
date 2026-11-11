import 'package:belajarflutter/models/pemain_chelsea.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiController extends GetxController {

  var isLoading = false.obs;

  var chelseaModel = Rxn<Chelsea>();

  Future<void> getPlayers() async {
    try {

      isLoading.value = true;

      final url = Uri.parse(
        "https://www.thesportsdb.com/api/v1/json/123/lookup_all_players.php?id=133610"
      );

      final response = await http.get(url);

      isLoading.value = false;

      if (response.statusCode == 200) {

        chelseaModel.value = chelseaFromJson(response.body);

        print("Jumlah pemain: ${chelseaModel.value?.player.length}");

      } else {
        print("Gagal: cek internet connection");
      }

    } catch (e, stackTrace) {
      isLoading.value = false;

      print("ERROR API: $e");
      print("STACK TRACE: $stackTrace");
    }
  }

}

import 'package:get/get.dart';

class DetailProdukController extends GetxController {

  late String namaProduk;
  late String harga;
  late String foto;
  late String club;
  late String deskripsi;

@override
void onInit() {
  super.onInit();
  final arguments = Get.arguments;
  namaProduk = arguments['namaProduk'];
  harga = arguments['harga'];
  foto = arguments['foto'];
  club = arguments['club'];
  deskripsi = arguments['deskripsi'];
  }
}
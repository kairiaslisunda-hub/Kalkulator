import 'package:belajarflutter/models/produk_model.dart';
import 'package:get/get.dart';

class ListProdukController extends GetxController {

  List<ProdukModel> ListProduk = [
    ProdukModel(namaProduk: "Cole Palmer", harga: "€115 juta", foto: "foto/palmer.jpg", club: "Chelsea",
     deskripsi: "Cole Palmer adalah pemain sepak bola asal Inggris yang dikenal sebagai gelandang serang kreatif. Ia memiliki kemampuan dribel, visi bermain, serta penyelesaian akhir yang baik. Palmer juga dikenal tenang saat mengambil tendangan penalti dan menjadi salah satu pemain penting Chelsea."),
    ProdukModel(namaProduk: "Joao Pedro", harga: "€86 juta", foto: "foto/joped.jpg", club: "Chelsea",
     deskripsi: "João Pedro adalah pemain sepak bola asal Brasil yang bermain sebagai penyerang. Ia dikenal memiliki kemampuan dribel, kecepatan, kontrol bola, dan penyelesaian akhir yang baik. João Pedro juga mampu bermain sebagai gelandang serang dan menjadi salah satu pemain muda yang menarik perhatian di sepak bola Inggris."),
    ProdukModel(namaProduk: "Enzo Fernandez", harga: "€120 juta", foto: "foto/enzo.jpg", club: "Chelsea",
     deskripsi: "Enzo Fernández adalah pemain sepak bola asal Argentina yang bermain sebagai gelandang. Ia dikenal memiliki visi bermain yang baik, umpan akurat, kemampuan mengatur tempo, serta kuat dalam membantu pertahanan dan serangan. Enzo merupakan salah satu pemain penting Chelsea dan tim nasional Argentina"),
    ProdukModel(namaProduk: "Marc Cucurella", harga: "€95 juta", foto: "foto/cucurella.jpg", club: "Chelsea",
     deskripsi: "Marc Cucurella adalah pemain sepak bola asal Spanyol yang bermain sebagai bek kiri. Ia dikenal memiliki stamina tinggi, agresif dalam bertahan, serta aktif membantu serangan. Cucurella menjadi salah satu pemain penting Chelsea dan tim nasional Spanyol"),
    ProdukModel(namaProduk: "Moises Caicedo", harga: "€113 juta", foto: "foto/caicedo.jpg", club: "Chelsea",
     deskripsi: "Moisés Caicedo adalah pemain sepak bola asal Ekuador yang bermain sebagai gelandang bertahan. Ia dikenal memiliki stamina kuat, kemampuan merebut bola, tekel yang baik, dan mampu membantu membangun serangan. Caicedo merupakan salah satu pemain penting Chelsea dan tim nasional Ekuador."),
  ];

  
  Future<void> refreshProduk() async {
    await Future.delayed(
      const Duration(seconds: 1),
    );

    update();
  }

  void hapusProduk(ProdukModel produk) {
  ListProduk.remove(produk);
  update();
  }   
}
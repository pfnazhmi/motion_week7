import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class Produk extends GetxController {
  final CollectionReference produkCollection =
      FirebaseFirestore.instance.collection('produk');

  Future<List<ProdukModel>> getProduk() async {
    List<ProdukModel> produkList = [];

    try {
      QuerySnapshot querySnapshot = await produkCollection.get();

      querySnapshot.docs.forEach((doc) {
        ProdukModel produk = ProdukModel(
          image: doc['image'],
          name: doc['nama_produk'],
          status: doc['status'],
        );
        produkList.add(produk);
      });
    } catch (e) {
      print('Error: $e');
    }

    return produkList;
  }
}

class ProdukModel {
  final String image;
  final String name;
  final String status;

  ProdukModel({required this.image, required this.name, required this.status});
}

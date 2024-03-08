import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_week7/config/app_color.dart';
import 'package:motion_week7/controller/c_produk.dart';

class ProductPage extends StatelessWidget {
  ProductPage({super.key});
  final Produk produkController = Get.put(Produk());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3FAF3),
      body: SafeArea(
        child: Column(
          children: [
            Header(),
            const SizedBox(
              height: 24,
            ),
            FutureBuilder<List<ProdukModel>>(
              future: produkController.getProduk(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return Center(child: Text('No data available'));
                } else {
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                    ),
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return ProdukCard(
                        produk: snapshot.data![index],
                      );
                    },
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Container Header() {
    return Container(
      width: double.infinity,
      color: AppColor.bgAppBar,
      padding: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'List Produk',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xFFF1F1F1),
                ),
              ),
              child: TextField(
                onTap: () {},
                decoration: InputDecoration(
                  hintText: 'Cari Produk',
                  hintStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: const Color(0xFF7B8CB5),
                  ),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(
                      left: 14,
                      right: 12,
                    ),
                    child: Icon(
                      Icons.search,
                      color: Color(0xFFBDBDBD),
                    ),
                  ),
                  prefixIconColor: const Color(0xFF7B8CB5).withOpacity(0.5),
                  border: InputBorder.none,
                  prefixIconConstraints: const BoxConstraints(
                    minWidth: 12,
                    minHeight: 14,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProdukCard extends StatelessWidget {
  final ProdukModel produk;

  const ProdukCard({required this.produk});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            produk.image,
            fit: BoxFit.cover,
            height: 120,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  produk.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Status: ${produk.status}',
                  style: TextStyle(
                    color: produk.status == 'Available'
                        ? Colors.green
                        : Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

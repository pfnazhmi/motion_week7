import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_week7/config/app_color.dart';
import 'package:motion_week7/widget/button_custom.dart';

class KirimanPermintaanPage extends StatelessWidget {
  const KirimanPermintaanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.bgAppBar,
        title: Text(
          'Kiriman Permintaan',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ), // Icon back
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              titleLabel(BuildContext, "Foto produk"),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 76,
                height: 76,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Icon(
                    Icons.camera_alt,
                    size: 36,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              titleLabel(BuildContext, "Nama produk"),
              const SizedBox(
                height: 10,
              ),
              textField(BuildContext, "Sayur singkong"),
              titleLabel(BuildContext, "Deskripsi Produk"),
              const SizedBox(
                height: 10,
              ),
              textField(BuildContext, "Produk fresh dan menyenangkan."),
              titleLabel(BuildContext, "Kategori"),
              const SizedBox(
                height: 10,
              ),
              textField(BuildContext, "Sayuran"),
              titleLabel(BuildContext, "Harga"),
              const SizedBox(
                height: 10,
              ),
              textField(BuildContext, "Rp. 20.000"),
              titleLabel(BuildContext, "Jumlah"),
              const SizedBox(
                height: 10,
              ),
              textField(BuildContext, "1"),
              titleLabel(BuildContext, "Durasi Tahan"),
              const SizedBox(
                height: 10,
              ),
              textField(BuildContext, "2-4 Hari"),
              titleLabel(BuildContext, "Berat"),
              const SizedBox(
                height: 10,
              ),
              textField(
                BuildContext,
                "Dalam gram (contoh: 500 gr untuk 1 ikat)",
              ),
              const SizedBox(
                height: 32,
              ),
              ButtonCustom(label: "Kirim", onTap: () {}, isExpand: true)
            ],
          ),
        ),
      ),
    );
  }

  TextField textField(BuildContext, String hintText) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: Colors.black,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: const UnderlineInputBorder(),
      ),
    );
  }

  Text titleLabel(BuildContext, String text) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.w700,
        fontSize: 14,
        color: Colors.black,
      ),
    );
  }
}

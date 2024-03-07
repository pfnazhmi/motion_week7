import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_week7/config/app_asset.dart';
import 'package:motion_week7/config/app_color.dart';
import 'package:motion_week7/widget/button_custom.dart';

class ChangeProfilePage extends StatelessWidget {
  const ChangeProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.bgAppBar,
        title: Text(
          'Ubah Profile',
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
      backgroundColor: const Color(0xFFF3FAF3),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 24,
            ),
            Center(
              child: Image.asset(
                AppAssets.profileCamera,
                width: 75,
                height: 75,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            titleText(BuildContext, "Nama lengkap"),
            const SizedBox(
              height: 10,
            ),
            textfieldInput(BuildContext, "Nama lengkap"),
            const SizedBox(
              height: 10,
            ),
            titleText(BuildContext, "Email"),
            const SizedBox(
              height: 10,
            ),
            textfieldInput(BuildContext, "Email"),
            const SizedBox(
              height: 10,
            ),
            titleText(BuildContext, "Alamat"),
            const SizedBox(
              height: 10,
            ),
            textfieldInput(BuildContext, "Alamat"),
            const SizedBox(
              height: 10,
            ),
            titleText(BuildContext, "Nomor telepon"),
            const SizedBox(
              height: 10,
            ),
            textfieldInput(BuildContext, "Nomor telepon"),
            const SizedBox(
              height: 40,
            ),
            ButtonCustom(label: "Simpan", onTap: () {}, isExpand: false)
          ],
        ),
      ),
    );
  }

  // ignore: avoid_types_as_parameter_names
  TextField textfieldInput(BuildContext, String hintText) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: Color(0xFF7a7a7a)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: AppColor.bgAppBar),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      ),
    );
  }

  Text titleText(BuildContext, String text) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: const Color(0xFF7A7A7A),
      ),
    );
  }
}

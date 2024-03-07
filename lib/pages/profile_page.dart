import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_week7/config/app_asset.dart';
import 'package:motion_week7/config/app_color.dart';
import 'package:motion_week7/pages/change_password_page.dart';
import 'package:motion_week7/pages/change_profile_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3FAF3),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(context),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textLabel(BuildContext, "Nama Lengkap"),
                    const SizedBox(
                      height: 12,
                    ),
                    inputField(BuildContext, "Natalie Diva"),
                    const SizedBox(
                      height: 12,
                    ),
                    textLabel(BuildContext, "Email"),
                    const SizedBox(
                      height: 12,
                    ),
                    inputField(BuildContext, "nataliediva@gmail.com"),
                    const SizedBox(
                      height: 12,
                    ),
                    textLabel(BuildContext, "Nomor Telepon"),
                    const SizedBox(
                      height: 12,
                    ),
                    inputField(BuildContext, "0812 3456 7890 "),
                    const SizedBox(
                      height: 12,
                    ),
                    textLabel(BuildContext, "Alamat"),
                    const SizedBox(
                      height: 12,
                    ),
                    inputField(BuildContext, "Jl. Sukapura No. 03"),
                    const SizedBox(
                      height: 12,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChangePasswordPage()),
                          );
                        },
                        child: textLabel(BuildContext, "Keamanan")),
                    const SizedBox(
                      height: 12,
                    ),
                    inputField(BuildContext, "Ubah password"),
                    const SizedBox(
                      height: 32,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.logout_rounded,
                          color: AppColor.bgAppBar,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Logout Akun",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.bgAppBar,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextField inputField(BuildContext, String text) {
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
        hintText: text,
        hintStyle: const TextStyle(color: Colors.grey),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      ),
    );
  }

  Text textLabel(BuildContext, String text) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: const Color(0xFF7A7A7A),
      ),
    );
  }

  Container Header(context) {
    return Container(
      width: double.infinity,
      color: AppColor.bgAppBar,
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Image.asset(AppAssets.profile),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Natalie Diva',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "nataliediva@gmail.com",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChangeProfilePage()),
              );
            },
            child: const Icon(
              Icons.edit,
              size: 24,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

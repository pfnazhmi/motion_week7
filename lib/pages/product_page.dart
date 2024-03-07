import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_week7/config/app_asset.dart';
import 'package:motion_week7/config/app_color.dart';
import 'package:motion_week7/pages/change_profile_page.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
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
                          prefixIconColor:
                              const Color(0xFF7B8CB5).withOpacity(0.5),
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
            ),
          ],
        ),
      ),
    );
  }
}

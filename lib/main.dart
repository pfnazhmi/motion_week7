import 'package:flutter/material.dart';
import 'package:motion_week7/pages/navbar.dart';
import 'package:motion_week7/pages/change_profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Navbar(),
    );
  }
}

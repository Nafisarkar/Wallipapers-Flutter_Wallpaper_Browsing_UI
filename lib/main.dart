import 'package:flutter/material.dart';
import 'package:wallipapers/pages/base_page.dart';
import 'package:wallipapers/pages/catagory_selector_page.dart';
import 'package:wallipapers/pages/full_screen_preview.dart';
import 'package:wallipapers/pages/login_page.dart';
import 'package:wallipapers/pages/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/loginpage': (context) => LoginPage(),
        '/catagoryselectorpage': (context) => CatagorySelectorPage(),
        '/basepage': (context) => BasePage(),
        '/fullscreenpreview': (context) => FullScreenPreview(),
      },

      home: const SplashScreen(),
    );
  }
}

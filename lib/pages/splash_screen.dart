import 'dart:async'; // Import async library for Timer/Future.delayed
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Convert to StatefulWidget to use initState
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToLogin();
  }

  void _navigateToLogin() {
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, "/loginpage");
        debugPrint("Navigating to LoginPage after delay");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Remove GestureDetector as navigation is now automatic
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          // Make BoxDecoration const
          image: DecorationImage(
            image: AssetImage("assets/images/SplashScreen.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(50), // Make EdgeInsets const
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "W a l l i",
                  style: GoogleFonts.leagueSpartan(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

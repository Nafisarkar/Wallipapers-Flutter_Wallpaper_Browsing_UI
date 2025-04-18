import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E1F),
      body: Center(
        child: Column(
          children: [
            //spacer
            const SizedBox(height: 220),

            //logo
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: const AssetImage("assets/images/wallilogo.png"),
              height: 150,
              fadeInDuration: const Duration(milliseconds: 100),
              fadeOutDuration: const Duration(milliseconds: 100),
              imageErrorBuilder: (context, error, stackTrace) {
                return const SizedBox(height: 150);
              },
              placeholderErrorBuilder: (context, error, stackTrace) {
                return const SizedBox(height: 150);
              },
            ),

            //spacer
            const SizedBox(height: 20),

            //text
            Center(
              child: Text(
                "W  a  l  l  i",
                style: GoogleFonts.leagueSpartan(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            //spacer
            const SizedBox(height: 120),

            //login text
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Center(
                child: Text(
                  "L o g i n",
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            //login Icons
            Row(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeInImage(
                  placeholder: MemoryImage(kTransparentImage),
                  image: const AssetImage('assets/images/google.png'),
                  height: 39,
                  fadeInDuration: const Duration(milliseconds: 100),
                  fadeOutDuration: const Duration(milliseconds: 100),
                  imageErrorBuilder: (context, error, stackTrace) {
                    return const SizedBox(height: 39);
                  },
                  placeholderErrorBuilder: (context, error, stackTrace) {
                    return const SizedBox(height: 39);
                  },
                ),
                Container(width: 1, height: 37, color: Colors.white),
                FadeInImage(
                  placeholder: MemoryImage(kTransparentImage),
                  image: const AssetImage('assets/images/ghost.png'),
                  height: 39,
                  fadeInDuration: const Duration(milliseconds: 100),
                  fadeOutDuration: const Duration(milliseconds: 100),
                  imageErrorBuilder: (context, error, stackTrace) {
                    return const SizedBox(height: 39);
                  },
                  placeholderErrorBuilder: (context, error, stackTrace) {
                    return const SizedBox(height: 39);
                  },
                ),
              ],
            ),

            //spacer
            const SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Center(
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 40,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  color: const Color.fromARGB(255, 45, 45, 45),
                  onPressed: () {
                    Navigator.popAndPushNamed(context, "/catagoryselectorpage");
                  },
                  child: Text(
                    "Login",
                    style: GoogleFonts.leagueSpartan(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

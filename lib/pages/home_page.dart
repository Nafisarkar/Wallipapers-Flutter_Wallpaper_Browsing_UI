import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallipapers/components/image_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Spacer - Keep large top space
          const SizedBox(height: 40),
          Text(
            "Featured Today",
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 20),
          ),
          //Spacer - Standard gap
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: ImageCard(
                  path: "assets/images/Rectangle7.png",
                  love: 153,
                ),
              ),
              const SizedBox(width: 10), // Keep horizontal gap
              Expanded(
                child: ImageCard(
                  path: "assets/images/Rectangle8.png",
                  love: 223,
                ),
              ),
            ],
          ),

          //Spacer - Small gap before categories
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Mountains",
                  style: GoogleFonts.poppins(color: Colors.grey, fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ),

              // Spacer
              Container(width: 1, height: 37, color: Colors.grey),

              Expanded(
                child: Text(
                  "Nature",
                  style: GoogleFonts.poppins(color: Colors.grey, fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ),

              // Spacer
              Container(width: 1, height: 37, color: Colors.grey),

              Expanded(
                child: Text(
                  "Sea",
                  style: GoogleFonts.poppins(color: Colors.grey, fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          //Spacer - Standard gap
          const SizedBox(height: 10),
          // Make image fill width
          ImageCard(path: "assets/images/Rectangle9.png", love: 434),
          //Spacer - Standard gap
          const SizedBox(height: 20),
          // Make image fill width
          ImageCard(path: "assets/images/Rectangle11.png", love: 155),
          //Spacer - Standard gap (Removed extra SizedBox)
          const SizedBox(height: 20),
          //Image Row - Use Expanded for equal width distribution
          Row(
            children: [
              Expanded(
                // Make image take half the width
                child: ClipRRect(
                  // Optional: Keep if rounded corners are needed later
                  child: ImageCard(
                    path: "assets/images/Rectangle12.png",
                    love: 388,
                  ),
                ),
              ),
              const SizedBox(width: 20), // Add spacing between images
              Expanded(
                // Make image take half the width
                child: ClipRRect(
                  // Optional: Keep if rounded corners are needed later
                  child: ImageCard(
                    path: "assets/images/Rectangle13.png",
                    love: 564,
                  ),
                ),
              ),
            ],
          ),
          // Add a final gap at the bottom if needed for scrolling comfort
          const SizedBox(height: 20),

          ImageCard(path: "assets/images/Rectangle14.png", love: 210),
          const SizedBox(height: 20),

          ImageCard(path: "assets/images/Rectangle15.png", love: 840),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

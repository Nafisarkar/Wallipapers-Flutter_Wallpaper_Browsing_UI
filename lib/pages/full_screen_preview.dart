import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FullScreenPreview extends StatelessWidget {
  const FullScreenPreview({super.key});

  @override
  Widget build(BuildContext context) {
    final String? imagePath =
        ModalRoute.of(context)?.settings.arguments as String?;

    if (imagePath == null) {
      // Handle error case first for clarity
      return Scaffold(
        backgroundColor: const Color(0xFF1E1E1F),
        body: const Center(
          child: Text(
            'Error: Image path not provided.',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    }

    // If path exists, build the main view
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1F),
      body: Stack(
        alignment: Alignment.center, // Center the main image container
        children: [
          // Main image container with padding and rounded corners
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
            child: ClipRRect(
              // Use ClipRRect for rounding
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                height: double.infinity, // Fill the ClipRRect bounds
                width: double.infinity, // Fill the ClipRRect bounds
              ),
            ),
          ),

          // Watermark positioned relative to Stack
          Positioned(
            top: 80, // Adjusted position slightly
            left: 50, // Adjusted position slightly
            child: Image.asset("assets/images/walliwatermark.png", height: 50),
          ),

          // Download controls positioned relative to Stack, spanning width
          Positioned(
            bottom: 80, // Keep vertical position
            left: 70, // Add padding from the left edge
            right: 50, // Add padding from the right edge
            child: Row(
              // Change alignment to spaceBetween
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Keep MaterialButton for Download text
                ClipRRect(
                  borderRadius: BorderRadius.circular(6.0),
                  child: MaterialButton(
                    // Remove padding if MaterialButton adds its own
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                    color: const Color(0xFF1E1E1F),
                    onPressed: () {
                      // Add download logic here
                    },
                    child: Text(
                      "Download",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                // Keep GestureDetector for the icon
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    "assets/images/downloade.png",
                    height: 80, // Adjusted height slightly for balance
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

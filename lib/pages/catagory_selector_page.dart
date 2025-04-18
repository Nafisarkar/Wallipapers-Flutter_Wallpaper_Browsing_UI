import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CatagorySelectorPage extends StatelessWidget {
  CatagorySelectorPage({super.key});

  final List<String> listfocatagory = [
    "Abstract",
    "Animals",
    "Architecture",
    "Art",
    "Cartoons",
    "Cats",
    "City",
    "Color",
  ];

  final List<String> listforme = ["Mountain", "Nature", "Sea", "Space"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E1F),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo
              Center(
                child: Image.asset("assets/images/wallilogo.png", height: 50),
              ),

              // Spacer
              const SizedBox(height: 10),

              // Logo text
              Center(
                child: Text(
                  "W  a  l  l  i",
                  style: GoogleFonts.leagueSpartan(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // spacer
              const SizedBox(height: 50),

              // Category Selector text
              Text(
                "Select Wallpaper Styles?",
                style: GoogleFonts.leagueSpartan(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),

              // Add some spacing after the title
              const SizedBox(height: 16),

              Wrap(
                alignment: WrapAlignment.start,
                spacing: 8.0,
                runSpacing: 8.0,
                children:
                    listfocatagory
                        .map(
                          (e) => MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            color: const Color.fromARGB(255, 45, 45, 45),
                            onPressed: () {},
                            child: Text(
                              e,
                              style: GoogleFonts.leagueSpartan(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        )
                        .toList(),
              ),

              // Add spacing between the two sections
              const SizedBox(height: 30),

              // Category Selector text
              Text(
                "Show me from ",
                style: GoogleFonts.leagueSpartan(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),

              // Add some spacing after the title
              const SizedBox(height: 16),

              Wrap(
                alignment: WrapAlignment.start,
                spacing: 8.0,
                runSpacing: 8.0,
                children:
                    listforme
                        .map(
                          (e) => MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            color: const Color.fromARGB(255, 45, 45, 45),
                            onPressed: () {},
                            child: Text(
                              e,
                              style: GoogleFonts.leagueSpartan(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        )
                        .toList(),
              ),

              // Spacer to push the button to the bottom
              const Spacer(),

              // Next Button
              Center(
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 40,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  color: const Color.fromARGB(255, 45, 45, 45),
                  onPressed: () {
                    Navigator.popAndPushNamed(context, "/basepage");
                  },
                  child: Text(
                    "Next",
                    style: GoogleFonts.leagueSpartan(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

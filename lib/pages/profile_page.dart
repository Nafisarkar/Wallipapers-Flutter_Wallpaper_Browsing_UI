import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallipapers/components/image_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/profilebackdrop.png",
          ), // replace with your image path
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //spacer
                  const SizedBox(height: 240),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/profile.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shaon An Nafi",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "1k Likes",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 13,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8,
                                    horizontal: 10,
                                  ),
                                  child: Container(
                                    width: 1,
                                    height: 13,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "3k Downloads",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  //spacer
                  const SizedBox(height: 40),

                  Text(
                    "Favorite Category",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),

                  //spacer
                  const SizedBox(height: 10),

                  Row(
                    spacing: 20,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          color: Color.fromARGB(255, 45, 45, 45),
                          onPressed: () {},
                          child: Text(
                            "Flower",
                            style: GoogleFonts.leagueSpartan(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          color: Color.fromARGB(255, 45, 45, 45),
                          onPressed: () {},
                          child: Text(
                            "Mountain",
                            style: GoogleFonts.leagueSpartan(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          color: Color.fromARGB(255, 45, 45, 45),
                          onPressed: () {},
                          child: Text(
                            "Sea",
                            style: GoogleFonts.leagueSpartan(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    spacing: 20,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          color: Color.fromARGB(255, 45, 45, 45),
                          onPressed: () {},
                          child: Text(
                            "Sky",
                            style: GoogleFonts.leagueSpartan(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      Expanded(child: Container()),
                      Expanded(child: Container()),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "Liked Wallpapers",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 20),
                      ImageCard(
                        path: "assets/images/Rectangle9.png",
                        love: 153,
                      ),
                      const SizedBox(height: 20),
                      ImageCard(
                        path: "assets/images/Rectangle14.png",
                        love: 223,
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

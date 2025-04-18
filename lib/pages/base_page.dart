import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:wallipapers/pages/home_page.dart';
import 'package:wallipapers/pages/profile_page.dart';
import 'package:wallipapers/pages/search_page.dart';
import 'package:animations/animations.dart'; // Import the animations package

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int currentPage = 0;
  bool isProfile = false;
  List<Widget> listofpages = const [HomePage(), SearchPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1F),
      body: SafeArea(
        child:
            !isProfile
                ? Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Logo section (only shown when not on profile page)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: FadeInImage(
                                placeholder: MemoryImage(kTransparentImage),
                                image: const AssetImage(
                                  "assets/images/wallilogo.png",
                                ),
                                height: 50,
                                fadeInDuration: const Duration(
                                  milliseconds: 100,
                                ),
                                fadeOutDuration: const Duration(
                                  milliseconds: 100,
                                ),
                                imageErrorBuilder: (
                                  context,
                                  error,
                                  stackTrace,
                                ) {
                                  return const SizedBox(height: 50);
                                },
                                placeholderErrorBuilder: (
                                  context,
                                  error,
                                  stackTrace,
                                ) {
                                  // Optional: Show something if placeholder fails (unlikely for kTransparentImage)
                                  return const SizedBox(height: 50);
                                },
                              ),
                            ),
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
                          ],
                        ),
                      ),
                      // Page placeholder (takes remaining space)
                      Expanded(
                        // Use PageTransitionSwitcher here
                        child: PageTransitionSwitcher(
                          reverse: true,
                          duration: const Duration(
                            milliseconds: 300,
                          ), // Animation duration
                          transitionBuilder: (
                            Widget child,
                            Animation<double> primaryAnimation,
                            Animation<double> secondaryAnimation,
                          ) {
                            // Use FadeThroughTransition
                            return FadeThroughTransition(
                              animation: primaryAnimation,
                              secondaryAnimation: secondaryAnimation,
                              fillColor: const Color(
                                0xFF1E1E1F,
                              ), // Match background
                              child: child,
                            );
                          },
                          child: listofpages[currentPage],
                        ),
                      ),
                    ],
                  ),
                )
                // If it is the profile page, wrap it too for consistent animation
                : PageTransitionSwitcher(
                  duration: const Duration(
                    milliseconds: 300,
                  ), // Animation duration
                  transitionBuilder: (
                    Widget child,
                    Animation<double> primaryAnimation,
                    Animation<double> secondaryAnimation,
                  ) {
                    // Use FadeThroughTransition
                    return FadeThroughTransition(
                      animation: primaryAnimation,
                      secondaryAnimation: secondaryAnimation,
                      fillColor: const Color(0xFF1E1E1F), // Match background
                      child: child,
                    );
                  },
                  child: listofpages[currentPage],
                ),
      ),
      bottomNavigationBar: SizedBox(
        height: 100.0,
        child: BottomNavigationBar(
          backgroundColor: const Color(0xFF1E1E1F),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 40,
          currentIndex: currentPage,
          onTap: (int index) {
            setState(() {
              if (index == 2) {
                debugPrint("Profile Visited");
                isProfile = true;
              } else {
                isProfile = false;
              }
              currentPage = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              activeIcon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined),
              activeIcon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}

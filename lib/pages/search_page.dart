import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallipapers/components/image_card.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final searchController = TextEditingController();

  var searchFlower = false;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40),
        Text(
          "Search",
          style: GoogleFonts.poppins(color: Colors.white, fontSize: 20),
        ),
        const SizedBox(height: 10),
        TextField(
          style: const TextStyle(color: Colors.white),
          cursorColor: Colors.grey,
          controller: searchController,
          decoration: InputDecoration(
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 3.0),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 3.0),
            ),
            hintText: "Flower",
            hintStyle: TextStyle(color: Colors.grey[700]),
          ),
          onChanged: (value) {
            final bool shouldSearchFlower =
                value.trim().toLowerCase() == "flower";
            if (searchFlower != shouldSearchFlower) {
              setState(() {
                searchFlower = shouldSearchFlower;
              });
              debugPrint("searchFlower set to: $searchFlower");
            }
          },
        ),
        const SizedBox(height: 20),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (searchFlower) ...[
                  ImageCard(path: "assets/images/Rectangle18.png", love: 232),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ImageCard(
                          path: "assets/images/Rectangle17.png",
                          love: 323,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: ImageCard(
                          path: "assets/images/Rectangle16.png",
                          love: 152,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ] else
                  Container(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

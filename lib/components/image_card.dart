import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';

class ImageCard extends StatelessWidget {
  final String path;
  final int love;
  const ImageCard({super.key, required this.path, required this.love});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint("Tapped on a $path");
        Navigator.pushNamed(context, "/fullscreenpreview", arguments: path);
      },
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: AssetImage(path),
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
              fadeInDuration: const Duration(milliseconds: 150),
              fadeOutDuration: const Duration(milliseconds: 150),
              imageErrorBuilder: (context, error, stackTrace) {
                return const SizedBox(height: 200);
              },
              placeholderErrorBuilder: (context, error, stackTrace) {
                return const SizedBox(height: 200);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 10, 20),
            child: Row(
              children: [
                const Icon(
                  Icons.favorite,
                  color: Color.fromARGB(255, 228, 101, 101),
                  size: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    love.toString(),
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 10,
                    ),
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

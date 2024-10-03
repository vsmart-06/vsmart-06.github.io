import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> theme = [
      Color(0xFFF7F0F0),
      Color(0xFF5FE3E7),
      Color(0xFF0DB9BF),
      Color(0xFF006494),
      Color(0xFF003554),
      Color(0xFF051923)
    ];

    return Container(
        color: theme[4],
        width: MediaQuery.of(context).size.width,
        child: Text(
          "What's life without a few laughs?",
          style: TextStyle(
            fontSize: 30,
            color: theme[0],
            fontFamily: GoogleFonts.greatVibes().fontFamily,
          ),
          textAlign: TextAlign.center,
        ));
  }
}

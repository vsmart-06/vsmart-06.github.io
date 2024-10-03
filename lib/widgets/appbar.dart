import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

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

    return AppBar(
      backgroundColor: theme[5],
      elevation: 0,
      title: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
          child: Text(
            "Srivishnu\nVusirikala",
            style: TextStyle(
                fontFamily: GoogleFonts.alexBrush().fontFamily,
                color: theme[0],
                fontSize: 23),
          ),
        ),
      ),
    );
  }
}

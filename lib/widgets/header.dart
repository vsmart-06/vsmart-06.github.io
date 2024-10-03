import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:personal_website/widgets/header_button.dart";
import "package:personal_website/widgets/social_button.dart";

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  List<Color> buttonColors = [
    Colors.transparent,
    Colors.transparent,
    Colors.transparent,
    Colors.transparent
  ];
  List<Color> theme = [
    Color(0xFFF7F0F0),
    Color(0xFF5FE3E7),
    Color(0xFF0DB9BF),
    Color(0xFF006494),
    Color(0xFF003554),
    Color(0xFF051923)
  ];
  double fontSize = 20;
  String? fontFamily = GoogleFonts.raleway().fontFamily;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: HeaderButton(
                name: "Srivishnu\nVusirikala",
                navPath: "/",
                font: GoogleFonts.alexBrush().fontFamily)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeaderButton(
                name: "Home",
                navPath: "/",
                font: GoogleFonts.jost().fontFamily),
            HeaderButton(
                name: "Projects",
                navPath: "/projects",
                font: GoogleFonts.jost().fontFamily),
            HeaderButton(
                name: "Organizations",
                navPath: "/organizations",
                font: GoogleFonts.jost().fontFamily),
            HeaderButton(
                name: "Achievements",
                navPath: "/achievements",
                font: GoogleFonts.jost().fontFamily),
            SocialButton(
              image: "https://i.imgur.com/ic880uA.jpeg",
              link: "https://linkedin.com/in/srivishnu-vusirikala",
              text: "Srivishnu LinkedIn",
            ),
            SocialButton(
              image: "https://i.imgur.com/pRJ3vYG.png",
              link: "https://github.com/vsmart-06",
              text: "Srivishnu GitHub",
            ),
            SocialButton(
              image: "https://i.imgur.com/yl0VdWG.png",
              link: "https://medium.com/@srivishnuvusirikala",
              text: "Srivishnu Medium",
            )
          ],
        ),
      ],
    );
  }
}

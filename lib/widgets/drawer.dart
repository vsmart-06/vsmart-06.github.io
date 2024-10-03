import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:personal_website/widgets/social_button.dart";

class SideBar extends StatelessWidget {
  const SideBar({super.key});

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
    String? font = GoogleFonts.jost().fontFamily;
    double fontSize = 20;

    return Drawer(
      backgroundColor: theme[4],
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 0, 0),
            child: Text(
              "What's life without a few laughs?",
              style: TextStyle(
                  fontFamily: GoogleFonts.greatVibes().fontFamily,
                  color: theme[1],
                  fontSize: 23),
            ),
          ),
          ListTile(
            title: Text(
              "Home",
              style: TextStyle(
                  color: theme[0], fontFamily: font, fontSize: fontSize),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),
          ListTile(
            title: Text(
              "Projects",
              style: TextStyle(
                  color: theme[0], fontFamily: font, fontSize: fontSize),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/projects");
            },
          ),
          ListTile(
            title: Text(
              "Organizations",
              style: TextStyle(
                  color: theme[0], fontFamily: font, fontSize: fontSize),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/organizations");
            },
          ),
          ListTile(
            title: Text(
              "Achievements",
              style: TextStyle(
                  color: theme[0], fontFamily: font, fontSize: fontSize),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/achievements");
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
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
          )
        ],
      ),
    );
  }
}

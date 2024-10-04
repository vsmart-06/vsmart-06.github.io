// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Project extends StatefulWidget {
  String name;
  String navPath;
  String subtitle;
  Project(
      {super.key,
      required this.name,
      required this.subtitle,
      required this.navPath});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  Color color = Colors.transparent;
  List<Color> theme = [
    Color(0xFFF7F0F0),
    Color(0xFF5FE3E7),
    Color(0xFF0DB9BF),
    Color(0xFF006494),
    Color(0xFF003554),
    Color(0xFF051923)
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextButton(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.name,
              style: TextStyle(
                color: theme[0],
                fontFamily: GoogleFonts.jost().fontFamily,
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                widget.subtitle,
                style: TextStyle(
                    color: theme[2],
                    fontFamily: GoogleFonts.jost().fontFamily,
                    fontSize: 20,
                    fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        onPressed: () {
          Navigator.pushNamed(context, widget.navPath);
        },
        onHover: (hover) {
          setState(() {
            hover ? color = theme[3] : color = Colors.transparent;
          });
        },
        style: ButtonStyle(
          fixedSize: WidgetStateProperty.all(Size(
              MediaQuery.of(context).size.width *
                  (MediaQuery.of(context).orientation == Orientation.landscape
                      ? 0.25
                      : 0.75),
              MediaQuery.of(context).size.height * (MediaQuery.of(context).orientation == Orientation.landscape
                      ? 0.4
                      : 0.5))),
          backgroundColor: WidgetStateProperty.all(color),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(color: theme[0]),
              borderRadius: BorderRadius.circular(10))),
        ),
      ),
    );
  }
}

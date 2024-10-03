// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:personal_website/widgets/appbar.dart";
import "package:personal_website/widgets/drawer.dart";
import "package:personal_website/widgets/footer.dart";
import "package:personal_website/widgets/header.dart";
import "dart:html";

class ProjectPage extends StatelessWidget {
  String title;
  String text;
  String link;
  String dates;
  ProjectPage(
      {super.key,
      required this.title,
      required this.text,
      required this.link,
      required this.dates});

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

    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      return Scaffold(
          body: Container(
        height: MediaQuery.of(context).size.height,
        color: theme[5],
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Header(),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        title,
                        style: TextStyle(
                            color: theme[1],
                            fontFamily: GoogleFonts.jost().fontFamily,
                            fontSize: 40),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Text(
                        dates,
                        style: TextStyle(
                            color: theme[2],
                            fontFamily: GoogleFonts.jost().fontFamily,
                            fontSize: 30),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextButton(
                          child: Text(
                            link,
                            style: TextStyle(
                                color: theme[3],
                                fontFamily: GoogleFonts.montserrat().fontFamily,
                                fontSize: 30),
                            textAlign: TextAlign.center,
                          ),
                          onPressed: () {
                            window.open(link, title);
                          },
                          style: ButtonStyle(
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)))))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        text,
                        style: TextStyle(
                            color: theme[0],
                            fontFamily: GoogleFonts.jost().fontFamily,
                            fontSize: 25),
                      ),
                    ),
                  ],
                ),
                Footer()
              ]),
        ),
      ));
    } else {
      return Scaffold(
          appBar: TopBar(),
          drawer: SideBar(),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: double.infinity,
            color: theme[5],
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          title,
                          style: TextStyle(
                              color: theme[1],
                              fontFamily: GoogleFonts.jost().fontFamily,
                              fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text(
                          dates,
                          style: TextStyle(
                              color: theme[2],
                              fontFamily: GoogleFonts.jost().fontFamily,
                              fontSize: 25),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextButton(
                            child: Text(
                              link,
                              style: TextStyle(
                                  color: theme[3],
                                  fontFamily:
                                      GoogleFonts.montserrat().fontFamily,
                                  fontSize: 25),
                              textAlign: TextAlign.center,
                            ),
                            onPressed: () {
                              window.open(link, title);
                            },
                            style: ButtonStyle(
                                shape: WidgetStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)))))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          text,
                          style: TextStyle(
                              color: theme[0],
                              fontFamily: GoogleFonts.jost().fontFamily,
                              fontSize: 25),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          ));
    }
  }
}

import "package:flutter/material.dart";
import "package:personal_website/widgets/footer.dart";
import "package:personal_website/widgets/header.dart";
import "package:personal_website/widgets/project.dart";

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
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
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: theme[5],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Header(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Project(name: "Machine Learning Research on Self-Supervision", subtitle: "Researched the impact of self-supervision on improving the accuracy of neural networks training to classify melanoma patches", navPath: "/melanoma-classification",),
                Project(name: "Oral Cancer Detection Application", subtitle: "Harnessed machine learning to detect oral cancer tumors", navPath: "/oral-cancer-detection",),
                Project(name: "Minesweeper Bot", subtitle: "Created a Discord bot that brought a variety of classic board games to the platform", navPath: "/minesweeper-bot",)
              ],
            ),
            Footer()
                  ]),
          ),
        ));
  }
}
import "package:flutter/material.dart";
import "package:personal_website/widgets/appbar.dart";
import "package:personal_website/widgets/drawer.dart";
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
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      return Scaffold(
          body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: theme[5],
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Header(),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Project(
                              name:
                                  "Machine Learning Research on Self-Supervision",
                              subtitle:
                                  "Researched the impact of self-supervision on improving the accuracy of neural networks training to classify melanoma patches",
                              navPath: "/melanoma-classification",
                            ),
                            Project(
                              name:
                                  "Math Research on Solving Depressed Polynomial Equations",
                              subtitle:
                                  "Researched a novel approach to formulate closed solutions for special cases of depressed polynomial equations",
                              navPath: "/solving-depressed-polynomials",
                            ),
                            Project(
                              name: "Oral Cancer Detection Application",
                              subtitle:
                                  "Harnessed machine learning to detect oral cancer tumors",
                              navPath: "/oral-cancer-detection",
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Project(
                              name: "Minesweeper Bot",
                              subtitle:
                                  "Created a Discord bot that brought a variety of classic board games to the platform",
                              navPath: "/minesweeper-bot",
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Footer()
                ]),
          ),
        ),
      ));
    } else {
      return Scaffold(
          appBar: TopBar(),
          drawer: SideBar(),
          body: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: theme[5],
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(children: [
                  Project(
                    name: "Machine Learning Research on Self-Supervision",
                    subtitle:
                        "Researched the impact of self-supervision on improving the accuracy of neural networks training to classify melanoma patches",
                    navPath: "/melanoma-classification",
                  ),
                  Project(
                    name:
                        "Math Research on Solving Depressed Polynomial Equations",
                    subtitle:
                        "Researched a novel approach to formulate closed solutions for special cases of depressed polynomial equations",
                    navPath: "/solving-depressed-polynomials",
                  ),
                  Project(
                    name: "Oral Cancer Detection Application",
                    subtitle:
                        "Harnessed machine learning to detect oral cancer tumors",
                    navPath: "/oral-cancer-detection",
                  ),
                  Project(
                    name: "Minesweeper Bot",
                    subtitle:
                        "Created a Discord bot that brought a variety of classic board games to the platform",
                    navPath: "/minesweeper-bot",
                  ),
                ]),
              ),
            ),
          ));
    }
  }
}

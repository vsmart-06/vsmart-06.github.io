import "package:flutter/material.dart";
import "package:personal_website/widgets/appbar.dart";
import "package:personal_website/widgets/drawer.dart";
import "package:personal_website/widgets/footer.dart";
import "package:personal_website/widgets/header.dart";
import "package:personal_website/widgets/item_card.dart";

class Achievements extends StatefulWidget {
  const Achievements({super.key});

  @override
  State<Achievements> createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
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
          body: Container(
        color: theme[5],
        child: SingleChildScrollView(
          child: Column(children: [
            Header(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ItemCard(
                    heading: "Intuit Scholarship Program Winner",
                    subHeading:
                        "Academic scholarship awarded to top 10% applicants globally.\nReceived \$10000/yr for 4 years."),
                ItemCard(
                  heading: "Greenwood High Merit Scholarship",
                  subHeading:
                      "Awarded \$5000 for achieving 9/9 A*s in the 10th grade IGCSE board exams.",
                ),
                ItemCard(
                    heading: "National Merit Scholarship Finalist",
                    subHeading:
                        "Top 15000 out of 1.5M PSAT/NMSQT candidates globally."),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ItemCard(
                heading:
                    "American Invitational Mathematics Examination (AIME) Qualifier",
                subHeading:
                    "Qualified for the AIME due to superior performance in the American Mathematics Competition (AMC) (top 5% globally).",
              ),
              ItemCard(
                  heading:
                      "Indian National Olympiad in Informatics (INOI) Qualifier",
                  subHeading:
                      "Qualified for the INOI by achieving the required cutoff marks in the Zonal Computing Olympiad (ZCO) (top 25%)."),
              ItemCard(
                  heading: "Indian Olympiad Qualifier in Mathematics (IOQM)",
                  subHeading:
                      "Awarded a merit certificate for achieving the required cutoff score."),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ItemCard(
                heading: "7th Karnataka State School Chess Team Championship",
                subHeading:
                    "Captained the school team to 3rd place in the U-18 category.",
              ),
              ItemCard(
                heading: "Wissen School Quiz Competition 2023",
                subHeading:
                    "Placed in the top 5 out of 350+ school teams from across India.",
              ),
            ]),
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
            color: theme[5],
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(children: [
                  ItemCard(
                      heading: "Intuit Scholarship Program Winner",
                      subHeading:
                          "Academic scholarship awarded to top 10% applicants globally.\nReceived \$10000/yr for 4 years."),
                  ItemCard(
                    heading: "Greenwood High Merit Scholarship",
                    subHeading:
                        "Awarded \$5000 for achieving 9/9 A*s in the 10th grade IGCSE board exams.",
                  ),
                  ItemCard(
                      heading: "National Merit Scholarship Finalist",
                      subHeading:
                          "Top 15000 out of 1.5M PSAT/NMSQT candidates globally."),
                  ItemCard(
                    heading:
                        "American Invitational Mathematics Examination (AIME) Qualifier",
                    subHeading:
                        "Qualified for the AIME due to superior performance in the American Mathematics Competition (AMC) (top 5% globally).",
                  ),
                  ItemCard(
                      heading:
                          "Indian National Olympiad in Informatics (INOI) Qualifier",
                      subHeading:
                          "Qualified for the INOI by achieving the required cutoff marks in the Zonal Computing Olympiad (ZCO) (top 25%)."),
                  ItemCard(
                      heading:
                          "Indian Olympiad Qualifier in Mathematics (IOQM)",
                      subHeading:
                          "Awarded a merit certificate for achieving the required cutoff score."),
                  ItemCard(
                    heading:
                        "7th Karnataka State School Chess Team Championship",
                    subHeading:
                        "Captained the school team to 3rd place in the U-18 category.",
                  ),
                  ItemCard(
                    heading: "Wissen School Quiz Competition 2023",
                    subHeading:
                        "Placed in the top 5 out of 350+ school teams from across India.",
                  ),
                ]),
              ),
            ),
          ));
    }
  }
}

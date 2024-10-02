import "package:flutter/material.dart";
import "package:personal_website/widgets/header.dart";
import "package:google_fonts/google_fonts.dart";
import "package:personal_website/widgets/achievement.dart";

class Achievements extends StatefulWidget {
  const Achievements({super.key});

  @override
  State<Achievements> createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {

  String? fontMain = GoogleFonts.montserrat().fontFamily;
  String? fontTitle = GoogleFonts.merriweather().fontFamily;
  String? fontQuote = GoogleFonts.greatVibes().fontFamily;
  List<Color> theme = [Color(0xFFF7F0F0), Color(0xFF5FE3E7), Color(0xFF0DB9BF), Color(0xFF006494), Color(0xFF003554), Color(0xFF051923)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: theme[5],
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                color: theme[3],
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                      child: Text(
                        "SRIVISHNU VUSIRIKALA",
                        style: TextStyle(
                          fontSize: 30,
                          color: theme[5],
                          fontFamily: fontTitle,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "What's life without a few laughs?",
                        style: TextStyle(
                          fontSize: 30,
                          color: theme[5],
                          fontFamily: fontQuote,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Header(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Achievement(
                    heading: "Scholastic Aptitude Test (SAT)", 
                    subHeading: "Scored 1580/1600 (99th percentile)"
                  ),
                  Achievement(
                    heading: "Preliminary Scholastic Aptitude Test (PSAT)",
                    subHeading: "Scored 1500/1520 (99th percentile)",
                  ),
                  Achievement(
                    heading: "Zonal Computing Olympiad (ZCO)", 
                    subHeading: "Qualified for the Indian National Olympiad in Informatics (INOI) by achieving the required cutoff marks"
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Achievement(
                    heading: "American Mathematics Competition (AMC)",
                    subHeading: "Qualified for the American Invitational Mathematics Examination (AIME) due to superior performance in the AMC",
                  ),
                  Achievement(
                    heading: "Indian Olympiad Qualifier in Mathematics (IOQM)", 
                    subHeading: "Awarded a merit certificate for achieving the required cutoff score"
                  ),
                  Achievement(
                    heading: "7th Karnataka State School Chess Team Championship",
                    subHeading: "Captained the school team to 3rd place in the U-18 category",
                  ),
                ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Achievement(
                    heading: "Published Research Paper", 
                    subHeading: "Paper titled 'Advancing Melanoma Diagnosis with Self-Supervised Neural Networks: Evaluating the Effectiveness of Different Techniques' published in the International Journal of Science and Innovative Engineering and Technology and indexed in Google Scholar"
                  ),
                  Achievement(
                    heading: "Minesweeper Bot",
                    subHeading: "Owner of a verified Discord bot in 1600+ servers",
                  ),
                  Achievement(
                    heading: "Excel Core Robotics",
                    subHeading: "Co-founder of Excel Core Robotics to teach middle school children robotics with LEGO MINDSTORMS",
                  ),
                ]
              )
            ]
          ),
        ),
      )
    );
  }
}
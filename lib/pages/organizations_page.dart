import "package:flutter/material.dart";
import "package:personal_website/widgets/appbar.dart";
import "package:personal_website/widgets/drawer.dart";
import "package:personal_website/widgets/footer.dart";
import "package:personal_website/widgets/header.dart";
import "package:personal_website/widgets/item_card.dart";

class Organizations extends StatefulWidget {
  const Organizations({super.key});

  @override
  State<Organizations> createState() => _OrganizationsState();
}

class _OrganizationsState extends State<Organizations> {
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
                  heading: "Software Intern",
                  subHeading:
                      "- Developed REST API using JIRA platform to track issues & tickets in the organization to speed up workflow\n- Built API with Flask in Python",
                  organization: "Labra.io",
                ),
                ItemCard(
                  heading: "Senior Bot Developer",
                  subHeading:
                      "- Developed STEMMie bot to manage organization Discord server\n- Implemented features like task management, on/off boarding members, reminders, attendance, etc.\n- Used Python and the Discord API",
                  organization: "STEMist Education",
                ),
                ItemCard(
                  heading: "Project: Code",
                  subHeading:
                      "- Developed an application to collate electronic health data of patients\n- Worked in a team of 10 to develop a mobile application to display radiology reports, blood tests, etc.",
                  organization: "University of Illinois Urbana-Champaign",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ItemCard(
                  heading: "Math Club President",
                  subHeading:
                      "- Led club of 10 members through weekly-problem solving sessions on advanced math concepts\n- Hosted annual quiz competitions and published a biannual school math magazine\n- Organized annual Pi Day events (quiz, treasure hunt, integration bee) for a community of 600 high school students",
                  organization: "Greenwood High International School",
                ),
                ItemCard(
                  heading: "Head Of Technology",
                  subHeading:
                      "- Developed the website for IGNITE 2023 (annual inter-school cultural fest) with 1300+ participants\n- Led a team of 4 to develop the website within 2 months\n- Coordinated with departments to get specific requirements",
                  organization: "Greenwood High International School",
                ),
                ItemCard(
                  heading: "Undersecretary General Of Technology",
                  subHeading:
                      "- Built the website for GWHMUN 2023, the largest inter-school MUN in Bangalore\n- Led a team of 4 to develop the website\n- Coordinated with school departments and organizing committee to get specific requirements",
                  organization: "Greenwood High International School",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ItemCard(
                  heading: "Co-founder Of Excel Core Robotics",
                  subHeading:
                      "- Created a lesson to help students program and build robots\n- Taught motor control, sensing, and team building skills\n- Capstone project: robotic floor sweeper",
                  organization: "Excel Core Robotics",
                ),
                ItemCard(
                  heading: "AwesomeMath Summer Program",
                  subHeading:
                      "- Advanced mathematics for gifted students\n- Explored complex math topics such as Cauchy-Shwarz inequality, Newton sums and Newton's theorem, analytical trigonometry, roots of unity, and more",
                  organization: "AwesomeMath",
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
            color: theme[5],
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(children: [
                  ItemCard(
                    heading: "Software Intern",
                    subHeading:
                        "- Developed REST API using JIRA platform to track issues & tickets in the organization to speed up workflow\n- Built API with Flask in Python",
                    organization: "Labra.io",
                  ),
                  ItemCard(
                    heading: "Senior Bot Developer",
                    subHeading:
                        "- Developed STEMMie bot to manage organization Discord server\n- Implemented features like task management, on/off boarding members, reminders, attendance, etc.\n- Used Python and the Discord API",
                    organization: "STEMist Education",
                  ),
                  ItemCard(
                    heading: "Project: Code",
                    subHeading:
                        "- Developed an application to collate electronic health data of patients\n- Worked in a team of 10 to develop a mobile application to display radiology reports, blood tests, etc.",
                    organization: "University of Illinois Urbana-Champaign",
                  ),
                  ItemCard(
                    heading: "Math Club President",
                    subHeading:
                        "- Led club of 10 members through weekly-problem solving sessions on advanced math concepts\n- Hosted annual quiz competitions and published a biannual school math magazine\n- Organized annual Pi Day events (quiz, treasure hunt, integration bee) for a community of 600 high school students",
                    organization: "Greenwood High International School",
                  ),
                  ItemCard(
                    heading: "Head Of Technology",
                    subHeading:
                        "- Developed the website for IGNITE 2023 (annual inter-school cultural fest) with 1300+ participants\n- Led a team of 4 to develop the website within 2 months\n- Coordinated with departments to get specific requirements",
                    organization: "Greenwood High International School",
                  ),
                  ItemCard(
                    heading: "Undersecretary General Of Technology",
                    subHeading:
                        "- Built the website for GWHMUN 2023, the largest inter-school MUN in Bangalore\n- Led a team of 4 to develop the website\n- Coordinated with school departments and organizing committee to get specific requirements",
                    organization: "Greenwood High International School",
                  ),
                  ItemCard(
                    heading: "Co-founder Of Excel Core Robotics",
                    subHeading:
                        "- Created a lesson to help students program and build robots\n- Taught motor control, sensing, and team building skills\n- Capstone project: robotic floor sweeper",
                    organization: "Excel Core Robotics",
                  ),
                  ItemCard(
                    heading: "AwesomeMath Summer Program",
                    subHeading:
                        "- Advanced mathematics for gifted students\n- Explored complex math topics such as Cauchy-Shwarz inequality, Newton sums and Newton's theorem, analytical trigonometry, roots of unity, and more",
                    organization: "AwesomeMath",
                  ),
                ]),
              ),
            ),
          ));
    }
  }
}

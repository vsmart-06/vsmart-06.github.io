import "package:flutter/material.dart";
import "package:personal_website/widgets/header.dart";
import "package:personal_website/widgets/footer.dart";
import "package:google_fonts/google_fonts.dart";
import "package:animated_text_kit/animated_text_kit.dart";

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? fontMain = GoogleFonts.montserrat().fontFamily;
  String? fontTitle = GoogleFonts.merriweather().fontFamily;
  String? fontQuote = GoogleFonts.greatVibes().fontFamily;
  List<double> padValues = [20, 20];
  Color cardColor = Color(0xFFF7F0F0);
  List<Color> theme = [
    Color(0xFFF7F0F0),
    Color(0xFF5FE3E7),
    Color(0xFF0DB9BF),
    Color(0xFF006494),
    Color(0xFF003554),
    Color(0xFF051923)
  ];
  bool animation = false;

  void hoverAnimation(var event, bool hover) {
    if (hover && !animation) {
      setState(() {
        padValues = [10, 30];
        cardColor = theme[1];
        animation = true;
      });
    } else if (!hover && animation) {
      setState(() {
        padValues = [20, 20];
        cardColor = theme[0];
        animation = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: double.infinity,
      color: theme[5],
      child: SingleChildScrollView(
        child: Column(children: [
          Header(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 30, 0, 50),
                          child: AnimatedTextKit(
                            repeatForever: true,
                            pause: Duration(seconds: 3),
                            animatedTexts: [
                              TypewriterAnimatedText(
                                "print(\"Hi guys!\")",
                                cursor: "|",
                                speed: Duration(milliseconds: 100),
                                textStyle: TextStyle(
                                    fontFamily:
                                        GoogleFonts.sourceCodePro().fontFamily,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: theme[1]),
                              ),
                              TypewriterAnimatedText(
                                "System.out.println(\"Hi guys!\");",
                                speed: Duration(milliseconds: 100),
                                cursor: "|",
                                textStyle: TextStyle(
                                    fontFamily:
                                        GoogleFonts.sourceCodePro().fontFamily,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: theme[1]),
                              ),
                              TypewriterAnimatedText(
                                "print(\"Hi guys!\");",
                                speed: Duration(milliseconds: 100),
                                cursor: "|",
                                textStyle: TextStyle(
                                    fontFamily:
                                        GoogleFonts.sourceCodePro().fontFamily,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: theme[1]),
                              ),
                              TypewriterAnimatedText(
                                "cout << \"Hi guys!\" << endl;",
                                speed: Duration(milliseconds: 100),
                                cursor: "|",
                                textStyle: TextStyle(
                                    fontFamily:
                                        GoogleFonts.sourceCodePro().fontFamily,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: theme[1]),
                              ),
                            ],
                          )),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Text(
                            "My name is Srivishnu Vusirikala, and I am a freshman studying Computer Science at the University of Illinois Urbana-Champaign. I am an avid lover of programming, mathematics, and chess, while I also enjoy playing sports such as cricket, basketball, and hockey. Buckle your seatbelts, as you get ready to navigate this tapestry that is my life!",
                            style: TextStyle(
                                fontFamily: GoogleFonts.jost().fontFamily,
                                fontSize: 30,
                                color: theme[0])),
                      )
                    ],
                  ),
                  Card(
                    color: theme[3],
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image(
                          image: AssetImage("me.jpg"),
                          width: MediaQuery.of(context).size.width * 0.25,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Footer()
        ]),
      ),
    ));
  }
}

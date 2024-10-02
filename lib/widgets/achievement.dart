// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Achievement extends StatefulWidget {
  String heading;
  String subHeading;
  Achievement({key, required this.heading, required this.subHeading})
      : super(key: key);

  @override
  State<Achievement> createState() => _AchievementState();
}

class _AchievementState extends State<Achievement>
    with SingleTickerProviderStateMixin {
  List<Color> theme = [
    Color(0xFFF7F0F0),
    Color(0xFF5FE3E7),
    Color(0xFF0DB9BF),
    Color(0xFF006494),
    Color(0xFF003554),
    Color(0xFF051923)
  ];
  String? font = GoogleFonts.jost().fontFamily;

  late AnimationController animationController;
  late Animation colorAnimation;
  late List<Animation> padAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 100));
    colorAnimation =
        ColorTween(begin: theme[0], end: theme[3]).animate(animationController);
    padAnimation = [
      Tween<double>(begin: 20, end: 10).animate(animationController),
      Tween<double>(begin: 20, end: 30).animate(animationController)
    ];
    animationController.addListener(() {
      setState(() {});
    });
  }

  void hoverAnimation(bool hover) {
    hover ? animationController.forward() : animationController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          20, padAnimation[0].value, 20, padAnimation[1].value),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.25,
        height: MediaQuery.of(context).size.height * 0.6,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            color: theme[5],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: colorAnimation.value)),
            child: MouseRegion(
              onEnter: (event) => hoverAnimation(true),
              onHover: (event) => hoverAnimation(true),
              onExit: (event) => hoverAnimation(false),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.heading,
                      style: TextStyle(
                        fontSize: 30,
                        color: theme[0],
                        fontWeight: FontWeight.bold,
                        fontFamily: font,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text(
                        widget.subHeading,
                        style: TextStyle(
                            fontSize: 20,
                            color: theme[2],
                            fontStyle: FontStyle.italic,
                            fontFamily: font),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

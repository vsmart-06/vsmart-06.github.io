// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class ItemCard extends StatefulWidget {
  String heading;
  String subHeading;
  String? organization;
  ItemCard(
      {key, required this.heading, required this.subHeading, this.organization})
      : super(key: key);

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard>
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
  bool press = false;

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
      child: MediaQuery.of(context).orientation == Orientation.landscape
          ? MouseRegion(
              onEnter: (event) => hoverAnimation(true),
              onHover: (event) => hoverAnimation(true),
              onExit: (event) => hoverAnimation(false),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: widget.organization == null
                      ? MediaQuery.of(context).size.height * 0.6
                      : MediaQuery.of(context).size.height * 0.7,
                  child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                          color: theme[5],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(color: colorAnimation.value)),
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
                                widget.organization != null
                                    ? Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Text(
                                          widget.organization!,
                                          style: TextStyle(
                                            fontSize: 25,
                                            color: theme[3],
                                            fontStyle: FontStyle.italic,
                                            fontFamily: font,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                    : Container(),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    widget.subHeading,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: theme[2],
                                        fontStyle: FontStyle.italic,
                                        fontFamily: font),
                                    textAlign: widget.organization == null
                                        ? TextAlign.center
                                        : TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          )))),
            )
          : GestureDetector(
              onTap: () => setState(() {
                press = !press;
                hoverAnimation(press);
              }),
              child: SizedBox(
                width: MediaQuery.of(context).size.width *
                    (MediaQuery.of(context).orientation == Orientation.landscape
                        ? 0.25
                        : 0.75),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    color: theme[5],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: colorAnimation.value)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
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
                          widget.organization != null
                              ? Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    widget.organization!,
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: theme[3],
                                      fontStyle: FontStyle.italic,
                                      fontFamily: font,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              : Container(),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              widget.subHeading,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: theme[2],
                                  fontStyle: FontStyle.italic,
                                  fontFamily: font),
                              textAlign: widget.organization == null
                                  ? TextAlign.center
                                  : TextAlign.left,
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

// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";

class HeaderButton extends StatefulWidget {
  String name;
  String navPath;
  String? font;
  HeaderButton(
      {key, required this.name, required this.navPath, required this.font})
      : super(key: key);

  @override
  State<HeaderButton> createState() => _HeaderButtonState();
}

class _HeaderButtonState extends State<HeaderButton> {
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
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: TextButton(
        child: Text(
          widget.name,
          style:
              TextStyle(fontFamily: widget.font, color: theme[0], fontSize: 23),
        ),
        onPressed: () {
          Navigator.pushNamed(context, widget.navPath);
        },
        style: ButtonStyle(
            shape: WidgetStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))))),
      ),
    );
  }
}

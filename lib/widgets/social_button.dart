// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";
import "dart:html";

class SocialButton extends StatefulWidget {
  String name;
  String link;
  String text;
  SocialButton({key, required this.name, required this.link, required this.text}) : super(key : key);

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  List<Color> theme = [Color(0xFFF7F0F0), Color(0xFF5FE3E7), Color(0xFF0DB9BF), Color(0xFF006494), Color(0xFF003554), Color(0xFF051923)];

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Image(
        image: AssetImage(widget.name),
        width: 30,
        height: 30,
      ),
      onPressed: () {
        window.open(widget.link, widget.text);
      },
    );
  }
}
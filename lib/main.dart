import "package:flutter/material.dart";
import "package:personal_website/pages/home_page.dart";
import "package:personal_website/pages/achievements_page.dart";

void main() {
  runApp(
    MaterialApp(
      routes: {
        "/": (context) => Home(),
        "/achievements": (context) => Achievements()
      }
    )
  );
}
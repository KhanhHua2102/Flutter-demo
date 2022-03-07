import 'dart:ffi';

import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const NextScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
          child: const Image(image: AssetImage("assets/logo_image.png"))),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
          child: Text("Welcome our talented Vilatify employers!",
              style: TextStyle(fontSize: 30), textAlign: TextAlign.center))
    ])));
  }
}

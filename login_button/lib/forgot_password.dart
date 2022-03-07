import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ForgotPassword();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
          child: const Image(image: AssetImage("assets/logo_image.png"))),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: const TextField(
            autofocus: true,
            decoration: InputDecoration(
                icon: Icon(Icons.account_box_rounded),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.redAccent)),
                hintText: "Enter your email, we will send you a code."),
          ))
    ]));
  }
}

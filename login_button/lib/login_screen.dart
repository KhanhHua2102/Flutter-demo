import 'package:flutter/material.dart';
import 'package:login_button/next_screen.dart';
import 'package:login_button/forgot_password.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController? username = TextEditingController();
  TextEditingController? password = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);

  void signInPressed(context) {
    if (username?.text == "admin" && password?.text == "123456") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const NextScreen()));
    } else {
      showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
              title: const Text('Please try again!'),
              content: const Text('email: admin | password: 123456')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(backgroundColor: Colors.red[200],),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
          child: const Image(image: AssetImage("assets/logo_image.png"))),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextField(
            controller: username,
            autofocus: true,
            decoration: InputDecoration(
                icon: Icon(Icons.account_box_rounded),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.redAccent)),
                hintText: "Please Enter user email"),
          )),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextField(
            controller: password,
            obscureText: true,
            autofocus: true,
            decoration: InputDecoration(
                icon: Icon(Icons.lock),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.redAccent)),
                hintText: "Please Enter password"),
          )),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ForgotPassword()));
                },
                child: const Text(
                  "Forgot Password?",
                  textAlign: TextAlign.right,
                ),
                style: TextButton.styleFrom(primary: Colors.orange),
              ))),
      Container(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: ElevatedButton(
            onPressed: () => signInPressed(context),
            child: const Text("Sign In"),
            style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(), primary: Colors.red[400]),
          ))
    ]));
  }
}
import 'package:flutter/material.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 60,
          ),
          Center(
            child: Text(
              "New Password",
              style: TextStyle(fontSize: 30, color: Color(0xff4A4B4D)),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Center(
            child: Text(
              "Please enter your email to receive a \nlink to  create a new password via email",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Color(0xff7C7D7E)),
            ),
          ),
          SizedBox(
            height: 36,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "New Password",
              ),
              obscureText: true,
            ),
          ),
          SizedBox(
            height: 28,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Confirm Password"),
              obscureText: true,
            ),
          ),
          SizedBox(
            height: 28,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: ElevatedButton(onPressed: () {}, child: Text("Next")),
          )
        ],
      ),
    );
  }
}

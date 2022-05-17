import 'package:flutter/material.dart';
import 'package:meal_monkey/screens/login/controller.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsetsDirectional.only(start: 34, end: 34),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 60,
                ),
                Center(
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 30, color: Color(0xff4A4B4D)),
                  ),
                ),
                Center(
                  child: Text(
                    "Add your details to login",
                    style: TextStyle(fontSize: 14, color: Color(0xff7C7D7E)),
                  ),
                ),
                SizedBox(
                  height: 36,
                ),
                TextFormField(
                  controller: controller.emailController,
                    decoration: InputDecoration(hintText: "Your Email")),
                SizedBox(
                  height: 28,
                ),
                TextFormField(
                  controller: controller.passwordController,
                    obscureText: controller.obSecure,
                    decoration: InputDecoration(
                        hintText: "Password",
                        suffixIcon: IconButton(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onPressed: () {
                            controller.changeVisibility();
                            setState(() {});
                          },
                          icon: Icon(controller.obSecure == true
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ))),
                SizedBox(
                  height: 28,
                ),
                ElevatedButton(onPressed: () {
                  controller.login();
                }, child: Text("Login")),
                SizedBox(
                  height: 28,
                ),
                Center(
                    child: Text(
                  "Forgot your password?",
                  style: TextStyle(fontSize: 14, color: Color(0xff7C7D7E)),
                )),
                SizedBox(
                  height: 49,
                ),
                Center(
                    child: Text(
                  "or Login With",
                  style: TextStyle(fontSize: 14, color: Color(0xff7C7D7E)),
                )),
                SizedBox(
                  height: 27,
                ),

                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Color(0xff367FC0)),
                  icon: Padding(
                    padding: EdgeInsetsDirectional.only(end: 32),
                    child: Image.asset(
                      "assets/icons/fb.png",
                      height: 18,
                      width: 10,
                    ),
                  ),
                  label: Text("Login with Facebook"),
                ),
                SizedBox(
                  height: 28,
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Color(0xffDD4B39)),
                  icon: Padding(
                    padding: EdgeInsetsDirectional.only(end: 23),
                    child: Image.asset(
                      "assets/icons/google.png",
                      height: 15,
                      width: 15,
                    ),
                  ),
                  label: Text("Login with Google"),
                ),
                SizedBox(
                  height: 83,
                ),
                Center(
                  child: Text.rich(
                    TextSpan(children: [
                      TextSpan(
                          text: "Don't have an Account? ",
                          style: TextStyle(color: Color(0xff7C7D7E))),
                      WidgetSpan(
                          child: GestureDetector(
                              onTap: () {
                                print("hello");
                              },
                              child: Text("Sign Up",
                                  style: TextStyle(color: Color(0xffFC6011)))))
                      // TextSpan(text: "Sign Up",style: TextStyle(color: Color(0xffFC6011))),
                    ]),
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                // Center(child: Text("Don't have an Account? Sign Up")),
                SizedBox(
                  height: 28,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';

class LoginController
{
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool obSecure = true;

  changeVisibility(){
    obSecure = !obSecure;
  }


  void login(){

  }
}
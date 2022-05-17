import 'package:flutter/cupertino.dart';

class SignUpController
{
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final mobileController = TextEditingController();
  final addressController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool passwordObSecure = true;
  bool confirmPasswordObSecure = true;
  changPassState(){
    passwordObSecure =!passwordObSecure;
  }
  changConfirmPassState(){
    confirmPasswordObSecure =!confirmPasswordObSecure;
  }

  void signUp(){

  }

}
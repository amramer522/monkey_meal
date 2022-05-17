// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ar = {
  "langTextName": "عربى",
  "login": "تسجيل الدخول",
  "signUp": "تسجيل",
  "name": "الاسم",
  "password": "كلمة المرور",
  "confirmPassword": "تأكيد الباسورد",
  "email": "البريد الالكترونى",
  "address": "العنوان",
  "alreadyHaveAnAccount": "هل تمتلك حساب؟",
  "mobileNo": "رقم الهاتف",
  "addYourDetailsToSignUp": "ادخل بياناتك للتسجيل",
  "hintAfterSplash": "Discover the best foods from over 1,000\nrestaurants and fast delivery to your doorstep",
  "send": "ارسال",
  "finish": "انهاء",
  "resetPassword": "اعادة تعيين كلمة المرور",
  "resetPassHint": "Please enter your email to receive a \nlink to  create a new password via email"
};
static const Map<String,dynamic> en = {
  "langTextName": "En",
  "login": "Login",
  "signUp": "Sign Up",
  "name": "Name",
  "password": "Password",
  "confirmPassword": "Confirm Password",
  "email": "Email",
  "address": "Address",
  "alreadyHaveAnAccount": "Already have an Account? ",
  "mobileNo": "Mobile No",
  "addYourDetailsToSignUp": "Add your details to sign up",
  "hintAfterSplash": "Discover the best foods from over 1,000\nrestaurants and fast delivery to your doorstep",
  "send": "Send",
  "finish": "Finish",
  "resetPassword": "Reset Password",
  "resetPassHint": "Please enter your email to receive a \nlink to  create a new password via email"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ar": ar, "en": en};
}

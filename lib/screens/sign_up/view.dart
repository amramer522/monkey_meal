import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/generated/locale_keys.g.dart';

import 'controller.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final controller = SignUpController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsetsDirectional.only(start: 34.w, end: 34.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 60.h,
                ),
                Center(
                  child: GestureDetector(onTap: (){
                    context.setLocale(context.locale.languageCode == "ar"
                        ? const Locale("en")
                        : const Locale("ar"));
                  },child: Text(LocaleKeys.langTextName.tr())),
                ),
                SizedBox(
                  height: 60.h,
                ),
                Center(
                  child: Text(
                    LocaleKeys.signUp.tr(),
                    style: TextStyle(
                        fontSize: 30.sp, color: const Color(0xff4A4B4D)),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Center(
                  child: Text(
                    LocaleKeys.addYourDetailsToSignUp.tr(),
                    style: TextStyle(
                        fontSize: 14.sp, color: const Color(0xff7C7D7E)),
                  ),
                ),
                SizedBox(
                  height: 36.h,
                ),
                TextFormField(
                    decoration:
                        InputDecoration(hintText: LocaleKeys.name.tr())),
                SizedBox(
                  height: 28.h,
                ),
                TextFormField(
                    controller: controller.emailController,
                    decoration:
                        InputDecoration(hintText: LocaleKeys.email.tr())),
                SizedBox(
                  height: 28.h,
                ),
                TextFormField(
                    controller: controller.mobileController,
                    decoration:
                        InputDecoration(hintText: LocaleKeys.mobileNo.tr())),
                SizedBox(
                  height: 28.h,
                ),
                TextFormField(
                    controller: controller.addressController,
                    decoration:
                        InputDecoration(hintText: LocaleKeys.address.tr())),
                SizedBox(
                  height: 28.h,
                ),
                TextFormField(
                    controller: controller.passwordController,
                    decoration:
                        InputDecoration(hintText: LocaleKeys.password.tr())),
                SizedBox(
                  height: 28.h,
                ),
                TextFormField(
                    controller: controller.confirmPasswordController,
                    decoration: InputDecoration(
                        hintText: LocaleKeys.confirmPassword.tr())),
                SizedBox(
                  height: 28.h,
                ),
                ElevatedButton(
                    onPressed: () {
                      controller.signUp();
                    },
                    child: Text(LocaleKeys.signUp.tr())),
                SizedBox(
                  height: 24.h,
                ),
                Center(
                  child: Text.rich(
                    TextSpan(children: [
                      TextSpan(
                          text: LocaleKeys.alreadyHaveAnAccount.tr(),
                          style: const TextStyle(color: Color(0xff7C7D7E))),
                      WidgetSpan(
                          child: GestureDetector(
                              onTap: () {},
                              child: Text(LocaleKeys.login.tr(),
                                  style: const TextStyle(
                                      color: Color(0xffFC6011)))))
                      // TextSpan(text: "Sign Up",style: TextStyle(color: Color(0xffFC6011))),
                    ]),
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ),
                // Center(child: Text("Don't have an Account? Sign Up")),
                SizedBox(
                  height: 28.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

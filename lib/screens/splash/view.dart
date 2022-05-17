import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/gen/assets.gen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage(Assets.images.bg.path)),
        ),
        child: Center(
          child: Swing(
            child: Image.asset(
              Assets.images.logo.path,
              width: 218.w,
              height: 185.h,
            ),
          ),
        ),
      ),
    );
  }
}

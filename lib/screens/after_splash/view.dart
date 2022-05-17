import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/gen/fonts.gen.dart';

import '../../gen/assets.gen.dart';

class AfterSplashScreen extends StatelessWidget {
  const AfterSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 490.h,
              child: Stack(
                children: [
                  Image.asset(
                    Assets.images.topShape.path,
                    height: 370.h,
                    fit: BoxFit.fill,
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(Assets.images.products.p8.path,
                        height: 185.h,
                        width: 218.w,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 44,
            ),
            Text(
              "Discover the best foods from over 1,000\nrestaurants and fast delivery to your doorstep",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13,fontFamily: FontFamily.etihad, color: Color(0xff7C7D7E)),
            ),
            SizedBox(
              height: 36,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: ElevatedButton(onPressed: () {}, child: Text("Finish")),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: OutlinedButton(
                  onPressed: () {}, child: Text("Create an Account")),
            ),
            SizedBox(
              height: 26,
            ),
          ],
        ),
      ),
    );
  }
}

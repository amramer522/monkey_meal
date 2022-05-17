import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/screens/on_boarding/controller.dart';

import '../../generated/locale_keys.g.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = OnBoardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(34.r),
        child: ListView(
          children: [
            SizedBox(
              height: 80.h,
            ),
            SizedBox(
              height: 294.h,
              child: PageView(
                onPageChanged: (value) {
                  controller.changePage(value);
                  setState(() {});
                },
                children: List.generate(
                  controller.images.length,
                  (index) => Image.asset(
                        controller.images[controller.currentIndex],
                    width: 225.44,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                controller.images.length,
                (index) => Container(
                  margin: EdgeInsetsDirectional.only(start: 5.w),
                  height: 8,
                  width: index == controller.currentIndex ? 20.w : 8.w,
                  decoration: BoxDecoration(
                    // shape: BoxShape.circle,
                    borderRadius: BorderRadius.circular(25.r),
                    color: Color(index == controller.currentIndex
                        ? 0xffFC6011
                        : 0xffD6D6D6),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              controller.titles[controller.currentIndex],
              style: TextStyle(fontSize: 28.sp, color: const Color(0xff4A4B4D)),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 33.h,
            ),
            Text(
              controller.hints[controller.currentIndex],
              style: TextStyle(fontSize: 13.sp, color: const Color(0xff7C7D7E)),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40.h,
            ),
            controller.currentIndex == 2
                ? ElevatedButton(onPressed: () {}, child: Text(LocaleKeys.finish.tr()))
                : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}

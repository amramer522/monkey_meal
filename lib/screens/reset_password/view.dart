import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/generated/locale_keys.g.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 60.h,
          ),
          Center(
            child: Text(
              LocaleKeys.resetPassword.tr(),
              style: TextStyle(fontSize: 30.sp, color: const Color(0xff4A4B4D)),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Center(
            child: Text(
              LocaleKeys.resetPassHint.tr(),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14.sp, color: const Color(0xff7C7D7E)),
            ),
          ),
          SizedBox(
            height: 36.h,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 34.w),
            child:
                TextFormField(decoration:  InputDecoration(hintText: LocaleKeys.email.tr())),
          ),
          SizedBox(
            height: 28.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: ElevatedButton(onPressed: () {}, child: Text(LocaleKeys.send.tr())),
          )
        ],
      ),
    );
  }
}

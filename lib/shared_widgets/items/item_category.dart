import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/gen/fonts.gen.dart';

class ItemCategory extends StatelessWidget {
  const ItemCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 114.h,
      width: 88.w,
      margin: EdgeInsetsDirectional.only(start: 18.w),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(15.r),
              child: Image.network(
                "https://bnat.cc/wp-content/uploads/2021/06/5549-1.jpg",
                height: 88.h,
                width: 88.w,
              )),
          SizedBox(height: 7.h,),
          Text("Sri Lankan",style: TextStyle(fontSize: 14.sp,fontFamily: FontFamily.metroBold,color: const Color(0xff4A4B4D)),)
        ],
      ),
    );
  }
}

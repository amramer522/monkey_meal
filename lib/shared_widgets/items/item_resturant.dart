import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/fonts.gen.dart';

class ItemRestaurant extends StatelessWidget {
  const ItemRestaurant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 242.19.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            "https://1.bp.blogspot.com/--UX7jQpDFeI/XpjnUz86UII/AAAAAAAAEQA/pvNSSjD9B0szBRxCBS44pgWXKPfk9th6wCLcBGAsYHQ/s1600/hdoaa.com%2B%25D8%25B5%25D9%2588%25D8%25B1%2B%25D8%25AC%25D9%2585%25D9%258A%25D9%2584%25D8%25A9%2B%252856%2529.jpg",
            width: double.infinity,
            fit: BoxFit.fill,
            height: 193.h,
          ),
          SizedBox(height: 10.h,),
          Padding(
            padding:  EdgeInsetsDirectional.only(start: 20.w),
            child: Text("Minute by tuk tuk",style: TextStyle(fontSize: 16.sp,fontFamily: FontFamily.metroBold,color: Color(0xff4A4B4D))),
          ),
          Padding(
            padding:  EdgeInsetsDirectional.only(start: 20.w),
            child: Row(
              children: [
                Icon(Icons.star_rate,color: Color(0xffFC6011),size: 18.r,)
              ],
            ),
          )
        ],
      ),
    );
  }
}

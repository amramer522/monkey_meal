import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/gen/fonts.gen.dart';

import '../../../../shared_widgets/items/item_category.dart';
import '../../../../shared_widgets/items/item_resturant.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: ListView(

          children: [
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Good morning Akila!",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontFamily: FontFamily.metroBold,
                            height: 2.7.h),
                      ),
                      const Spacer(),
                      Icon(Icons.shopping_cart),
                    ],
                  ),
                  Text(
                    "Delivering to",
                    style: TextStyle(
                        fontSize: 11.sp,
                        fontFamily: FontFamily.metroRegular,
                        color: const Color(0xffB6B7B7),
                        height: 2.h),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Current Location",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: FontFamily.metroBold,
                            color: const Color(0xff7C7D7E),
                            height: 2.1.h),
                      ),
                      SizedBox(
                        width: 40.w,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 21.h,
                        color: const Color(0xffFC6011),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Search food",
                  prefixIcon: Padding(
                    padding: EdgeInsetsDirectional.only(start: 10.w),
                    child: const Icon(Icons.search),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 114.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => ItemCategory(),
                itemCount: 10,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Row(
                children: [
                  Text(
                    "Popular Restaurents",
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: FontFamily.metroBold,
                        color: Color(0xff4A4B4D)),
                  ),
                  const Spacer(),
                  GestureDetector(
                      onTap: () {},
                      child: Text(
                        "View all",
                        style: TextStyle(
                            fontSize: 13.sp,
                            fontFamily: FontFamily.metroRegular,
                            color: Color(0xffFC6011)),
                      ))
                ],
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => ItemRestaurant(),
              itemCount: 10,
            )
          ],
        ),
      ),
    );
  }
}

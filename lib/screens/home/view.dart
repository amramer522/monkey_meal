import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/gen/assets.gen.dart';
import 'package:meal_monkey/screens/home/pages/home/view.dart';
import 'package:meal_monkey/screens/home/pages/menu/view.dart';
import 'package:meal_monkey/screens/home/pages/more/view.dart';
import 'package:meal_monkey/screens/home/pages/offers/view.dart';
import 'package:meal_monkey/screens/home/pages/profile/view.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var pages = [MenuPage(), OfferPage(), HomePage(), ProfilePage(), MorePage()];
  var icons = [
    Icons.menu,
    Icons.local_offer,
    Icons.home,
    Icons.pages_rounded,
    Icons.more
  ];
  var title = ["Menu", "Offers", "Home", "Profile", "More"];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GestureDetector(
        onTap: (){
          currentPage = 2;
          setState(() {});
        },
        child: CircleAvatar(
          radius: 35.r,
          backgroundColor: currentPage==2?Colors.orange:Color(0xffB6B7B7),
          child: Icon(Icons.home,color:Colors.white,),
        ),
      ),
      bottomNavigationBar: Container(
          width: double.infinity,
          height: 75.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Assets.images.bottomNavBg.path),
                  fit: BoxFit.fill),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff4A4B4D).withOpacity(.11),
                  blurRadius: 30.r,
                  blurStyle: BlurStyle.outer,
                  // spreadRadius: 50
                ),
              ]),
          child: Row(
            children: List.generate(
                pages.length,
                (index) => index == 2
                    ? const Spacer()
                    : Expanded(
                        child: GestureDetector(
                          onTap: () {
                            currentPage = index;
                            setState(() {});
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                icons[index],
                                color:
                                    index == currentPage ? Colors.orange : null,
                              ),
                              Text(
                                title[index],
                                style: TextStyle(
                                    color: index == currentPage
                                        ? Colors.orange
                                        : null),
                              )
                            ],
                          ),
                        ),
                      )),
          )),
    );
  }
}

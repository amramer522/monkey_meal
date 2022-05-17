import 'package:flutter/cupertino.dart';
import 'package:meal_monkey/gen/assets.gen.dart';

class OnBoardingController {
  var images = [Assets.images.onboarding.onboarding1.path, Assets.images.onboarding.onboarding2.path, Assets.images.onboarding.onboarding3.path];
  var titles = ["Find Food You Love", "Fast Delivery", "Live Tracking"];
  var hints = [
    "Discover the best foods from over 1,000\nrestaurants and fast delivery to your doorstep",
    "Fast food delivery to your home, office\nwherever you are",
    "Real time tracking of your food on the app\nonce you placed the order"
  ];

  int currentIndex = 0;

  changePage(value) {
    currentIndex = value;
  }

}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/gen/assets.gen.dart';
import 'package:meal_monkey/screens/sign_up/view.dart';

import 'generated/codegen_loader.g.dart';
import 'helper/colors.dart';
import 'screens/after_splash/view.dart';
import 'screens/home/view.dart';
import 'screens/login/view.dart';
import 'screens/new_password/view.dart';
import 'screens/on_boarding/view.dart';
import 'screens/reset_password/view.dart';
import 'screens/splash/view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        child: ScreenUtilInit(
          builder: (context) => MyApp(),
        ),
        saveLocale: true,
        startLocale: const Locale("en"),
        fallbackLocale: const Locale("ar"),
        assetLoader: const CodegenLoader(),
        supportedLocales: const [
          Locale("ar"),
          Locale("en"),
        ],
        path: "assets/langs"),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
          primarySwatch: buildMaterialColor(Color(0xffFC6011)),
          platform: TargetPlatform.iOS,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                padding: EdgeInsets.only(top: 17, bottom: 18)),
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
              ),
              padding: EdgeInsets.only(top: 17, bottom: 18),
              side: BorderSide(color: Color(0xffFC6011), width: 1),
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: BorderSide.none,
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 34, vertical: 20),
              filled: true,
              fillColor: Color(0xffF2F2F2))),
      home: HomeScreen(),
    );
  }
}

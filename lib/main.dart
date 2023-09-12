import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/basic/home_screen.dart';
import 'package:getx_1/basic/screen_one.dart';
import 'package:getx_1/basic/screen_two.dart';
import 'package:getx_1/state_Manes/HomesScres.dart';
import 'package:getx_1/state_Manes/api/apiscreen.dart';
import 'package:getx_1/state_Manes/home_screen.dart';

import 'basic/language_screen.dart';
import 'basic/languages.dart';
import 'basic/size.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      // home: HomesScreen(),-
      // home: HomesScreenList(),
      home: apiHomeScreen(),

      debugShowCheckedModeBanner: false,
    );
  }
}


//
//  Basic Text
//
//      // home: HomeScreen(),
//       // getPages: [
//       //   GetPage(name: "/", page: () => HomeScreen()),
//       //   GetPage(name: "/screenOne", page: () => ScreenOne()),
//       //   GetPage(name: "/screenTwo", page: () => ScreenTwo()),
//       // ],
//       // home: SizeGetxScreen(),
//       // locale: Locale('en','US'),
//       translations: Language(),
//       locale: Locale('en','US'),
//       fallbackLocale: Locale('en','US'),
//       home: LanguesScreen(),

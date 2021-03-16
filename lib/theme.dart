import 'package:flutter/material.dart';

ThemeData basicTheme(){
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    primaryColor: Color(0xff4829b2),
    //iconTheme: IconThemeData(
    //color: Color(0xff4829b2),
    //size: 20,
    // ),
    //   accentColor: Color(0xff4829b2),
    //   tabBarTheme: base.tabBarTheme.copyWith(
    //     labelColor: Color(0xff4829b2)
    //   ),
    //   bottomNavigationBarTheme: BottomNavigationBarThemeData(
    //     selectedItemColor: Color(0xff4829b2),
    //     //backgroundColor: Color(0xff4829b2)
    //
    //   ),
    //   appBarTheme: AppBarTheme(color: Color(0xff4829b2)),
    //   scaffoldBackgroundColor: Colors.white,
    //   indicatorColor: Color(0xff4829b2),
    //   primaryIconTheme: base.primaryIconTheme.copyWith(
    //     color: Color(0xff4829b2),
    //   )
    // );
  );
}
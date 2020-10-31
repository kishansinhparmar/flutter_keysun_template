import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_strings.dart';

class AppThemeData {
  static ThemeData appThemeData() => ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,

    ///Page transitions
    pageTransitionsTheme: PageTransitionsTheme(
      builders: {
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
      },
    ),

    /// Main colors
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    accentColor: AppColors.accent,

    ///Backgrounds color
    backgroundColor: AppColors.background_color,
    scaffoldBackgroundColor: AppColors.scaffold_color,

    ///Font name
    fontFamily: AppStrings.font_normal,

    ///Text theme
    // textTheme: GoogleFonts.latoTextTheme(),

    ///AppBar common.theme
    appBarTheme: AppBarTheme(
      color: Colors.white,
      iconTheme: IconThemeData(
        color: AppColors.black,
      ),
      elevation: 0.0,
      // centerTitle: true,
    ),

    ///Bottom tab bar
    bottomAppBarTheme: BottomAppBarTheme(
      color: AppColors.icon_color,
    ),

    ///Icon common.theme
    iconTheme: IconThemeData(color: AppColors.icon_color),

    primaryTextTheme: TextTheme(),
  );

  static TextStyle appbarTextStyle() => TextStyle(
    color: AppColors.black,
    fontFamily: AppStrings.font_bold,
    fontSize: 20,
  );

  static TextStyle onBoardTitle() => TextStyle(
    color: AppColors.black,
    fontSize: 26,
    fontWeight: FontWeight.bold,
    height: 1.2,
  );

  static TextStyle onBoardDescription() => TextStyle(
    color: AppColors.onboard_description_color,
    fontSize: 16,
    letterSpacing: 1,
    height: 1.5,
  );

  static TextStyle normal16() => TextStyle(
    fontSize: 16,
    color: AppColors.black,
  );

  static TextStyle normal15() => TextStyle(
    fontSize: 15,
    color: AppColors.black,
  );

  static TextStyle normal16grey1() => TextStyle(
    fontSize: 16,
    color: AppColors.grey1,
  );

  static TextStyle normal15grey1() => TextStyle(
    fontSize: 15,
    color: AppColors.grey1,
  );

  static TextStyle textStyle3() => TextStyle(
    fontSize: 18,
  );

  static TextStyle storyTitle() => TextStyle(
    fontSize: 12,
  );

  static TextStyle commentMessages() =>
      TextStyle(fontSize: 10, fontWeight: FontWeight.bold);

  static TextStyle footerText() => TextStyle(
    fontSize: 12,
    color: Colors.black,
  );
}

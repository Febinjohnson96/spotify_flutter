import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';
import 'package:spotify/gen/fonts.gen.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      primaryColor: AppColors.primary,
      brightness: Brightness.light,
      fontFamily: FontFamily.satoshi,
      scaffoldBackgroundColor: AppColors.lightBackGround,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              textStyle:
                  TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)))));

  static ThemeData darkTheme = ThemeData(
      primaryColor: AppColors.primary,
      brightness: Brightness.dark,
      fontFamily: FontFamily.satoshi,
      scaffoldBackgroundColor: AppColors.darkBackGround,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              textStyle:
                  TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)))));
}

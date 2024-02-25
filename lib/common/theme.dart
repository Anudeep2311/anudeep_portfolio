import 'package:flutter/material.dart';

class AppColors {
  static const primaryColor = Color(0xff7F27FF);
  static const secondaryColor = Color(0xff9F70FD);
  static const buttonColor = Color(0xffFDBF60);
  static const textColor = Color(0xffFF8911);

  static const primaryDark = Color(0xff222831);
  static const secondaryDark = Color(0xff393E46);
  static const darkButton = Color(0xFF00ADB5);
  static const darkText = Color(0xFFEEEEEE);
}

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor: Colors.grey.shade400,
      selectedItemColor: Colors.black,
      backgroundColor: Colors.white,
      selectedLabelStyle:
          const TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
      unselectedLabelStyle:
          const TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    fontFamily: 'Preah',
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryDark,
    scaffoldBackgroundColor: AppColors.secondaryDark,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkButton,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor: Colors.grey.shade600,
      selectedItemColor: Colors.white,
      backgroundColor: Colors.black,
      selectedLabelStyle:
          const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      unselectedLabelStyle:
          const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}

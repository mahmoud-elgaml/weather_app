import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0xff000000);
const Color kSecondaryColor = Color(0xffFFFFFF);
const Color kTextColorLight = Color(0xff1E1E1E);
const Color kTextColorDark = Color(0xffEDE6CB);
const Color kBackgroundColorLight = Color(0xffF5F5F5);
const Color kBackgroundColorDark = Color(0xff1C1B33);

final ThemeData defaultLightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: kBackgroundColorLight,
  appBarTheme: const AppBarTheme(
    backgroundColor: kBackgroundColorLight,
    foregroundColor: kTextColorLight,
    elevation: 0,
  ),
  cardColor: Colors.white,
  iconTheme: const IconThemeData(color: kTextColorLight),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: kTextColorLight),
    bodyLarge: TextStyle(color: kTextColorLight, fontWeight: FontWeight.w600),
    titleLarge: TextStyle(color: kTextColorLight, fontSize: 20, fontWeight: FontWeight.bold),
  ),
);

final ThemeData defaultDarkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: kBackgroundColorDark,
  appBarTheme: const AppBarTheme(
    backgroundColor: kBackgroundColorDark,
    foregroundColor: kTextColorDark,
    elevation: 0,
  ),
  cardColor: Colors.grey[900],
  iconTheme: const IconThemeData(color: kTextColorDark),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: kTextColorDark),
    bodyLarge: TextStyle(color: kTextColorDark, fontWeight: FontWeight.w600),
    titleLarge: TextStyle(color: kTextColorDark, fontSize: 20, fontWeight: FontWeight.bold),
  ),
);

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/manager/theme/weather_theme.dart';

final themeProvider = Provider<ThemeData>((ref) {
  final brightness = WidgetsBinding.instance.platformDispatcher.platformBrightness;
  return brightness == Brightness.dark ? defaultDarkTheme : defaultLightTheme;
});

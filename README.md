# 🌦️ Weather App

A simple Flutter weather app that displays the current weather based on the user's location. The user can also search for other cities to view their weather information. The app supports light and dark themes, following the system's theme mode.

---

## ✨ Features

- 🌍 Get the current weather using GPS
- 🔍 Search for any city and view its weather
- 🌡️ Display temperature, weather condition, and city name
- 🌙 Supports system theme mode (Light/Dark)
- 📱 Responsive UI using `flutter_screenutil`
- 🎨 Beautiful UI using `flutter_svg` and `lottie`
- ✅ State management with `flutter_riverpod`
- 🚫 Graceful error handling for no internet or invalid input
- 💡 Clean architecture with `dio` and `dartz`

---

## 📽️ Demo

To see the app in action, check out the demo video below:

<video src="https://github.com/user-attachments/assets/80c933b0-00b1-4f0d-b850-a514edeef790" controls width="280" style="border-radius: 16px; box-shadow: 0 4px 12px rgba(0,0,0,0.2);"></video>

---

## 📦 Packages Used

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  dio: ^5.8.0+1
  flutter_riverpod: ^2.6.1
  intl: ^0.20.2
  geolocator: ^14.0.1
  flutter_svg: ^latest
  lottie: ^latest
  flutter_screenutil: ^latest
  flutter_launcher_icons: ^0.14.4

import 'package:flutter/material.dart';

import '../constants/shared_prefrences.dart';
import '../theme/theme_data.dart';

enum ThemeType { light, dark }

//Theme provider
class ThemeProvider extends ChangeNotifier {
  SavePreference pre = SavePreference();
  ThemeData currentTheme = lightTheme;
  ThemeType themeType = ThemeType.light;

  ThemeProvider() {
    setInitialTheme();
  }

  setInitialTheme() {
    ThemeData theme = lightTheme;
    pre.getTheme().then((value) {
      if (value != "null") {
        theme = (value == "dark") ? darkTheme : lightTheme;
      }
      currentTheme = theme;
      themeType = (theme == lightTheme) ? ThemeType.light : ThemeType.dark;
      notifyListeners();
    });
  }

  changeCurrentTheme() {
    if (currentTheme == darkTheme) {
      themeType = ThemeType.light;
      currentTheme = lightTheme;
    } else {
      themeType = ThemeType.dark;
      currentTheme = darkTheme;
    }
    pre.setTheme(themeType.name);
    notifyListeners();
  }
}

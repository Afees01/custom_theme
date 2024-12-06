import 'package:flutter/material.dart';

class AppConfiguController with ChangeNotifier {
  static bool isDark = false;
  onToggleTheme(bool value) {
    isDark = value;
    notifyListeners();
  }
}

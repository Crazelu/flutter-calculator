import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class DarkModeModel extends ChangeNotifier {
  static String _boxName = 'themeBox';
  static String _key = 'isDark';

  bool _isDark = false;
  bool get isDarkMode => _isDark;

  void toggleAppTheme() async {
    print('yea');
    _isDark = !_isDark;
    var box = await Hive.openBox(_boxName);
    box.put(_key, _isDark);

    notifyListeners();
  }

  void setAppTheme() async {
    try {
      var box = await Hive.openBox(_boxName);
      bool isDark = box.get(_key) ?? false;
      box.close();
      _isDark = isDark;
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }
}

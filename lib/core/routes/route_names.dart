import 'package:flutter/material.dart';
import 'package:calculator/UI/view/home.dart';

class RouteNames {
  //route names used through out the app will be specified as static constants here

  static const String home = '/';

  static Map<String, Widget Function(BuildContext)> routes = {
    RouteNames.home: (context) => Home(),
  };
}

import 'package:calculator/UI/view/home.dart';
import 'package:calculator/core/routes/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
//Routes will be generated with this function
//Therefore all views will be registered here with appropriate page transition
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.home:
        return CupertinoPageRoute(builder: (context) => Home());
        break;

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return CupertinoPageRoute(
      builder: (context) => Scaffold(
          appBar: AppBar(
              title: Text(
            'Page not found',
            style: TextStyle(color: Colors.red),
          )),
          body: Center(
            child: Text(
              'Error! Page not found',
              style: TextStyle(color: Colors.red),
            ),
          )),
    );
  }
}

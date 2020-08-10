import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  String _expression = '';
  String _result = '';

//exposing private fields with getters
  String get expression => _expression;
  String get result => _result;

  //this updates the expression when user clicks on a button apart from = and C
  void updateExpression(String expression) {
    _expression = expression;
    notifyListeners();
  }

  //this is triggered when each button apart from = and C is pressed
  void onTap(String input) {
    _result += input;
    notifyListeners();
  }

  //this updates the result when user clicks on =
  void updateResult() {
    //logic to do calculation goes here
    if (_result.contains('×')) {
      final first = num.parse(_result.substring(0, _result.indexOf('×') - 1));
      final second = num.parse(_result.substring(_result.indexOf('×') + 1));
      _expression = _result;
      _result = (first * second).toString();
      if (_result.endsWith('.0')) {
        _result = _result.substring(0, _result.length - 2);
      }
      notifyListeners();
    }
    if (_result.contains('+')) {
      final first = num.parse(_result.substring(0, _result.indexOf('+') - 1));
      final second = num.parse(_result.substring(_result.indexOf('+') + 1));
      _expression = _result;
      _result = (first + second).toString();
      if (_result.endsWith('.0')) {
        _result = _result.substring(0, _result.length - 2);
      }
      notifyListeners();
    }
    if (_result.contains('-')) {
      final first = num.parse(_result.substring(0, _result.indexOf('-') - 1));
      final second = num.parse(_result.substring(_result.indexOf('-') + 1));
      _expression = _result;
      _result = (first - second).toString();
      if (_result.endsWith('.0')) {
        _result = _result.substring(0, _result.length - 2);
      }
      notifyListeners();
    }
    if (_result.contains('÷')) {
      final first = num.parse(_result.substring(0, _result.indexOf('÷') - 1));
      final second = num.parse(_result.substring(_result.indexOf('÷') + 1));
      _expression = _result;
      _result = (first / second).toString();
      if (_result.endsWith('.0')) {
        _result = _result.substring(0, _result.length - 2);
      }
      notifyListeners();
    }
  }

  //this deletes the last character that user presses
  void deleteLast() {
    try {
      List result = _result.split('');
      // List list = [];
      // for (String i in result) {
      //   if (i != '') {
      //     print('$i - ${i.toString().isEmpty}');
      //     list.add(i);
      //   }
      // }
      // print(result);
      result.removeLast();
      _result = result.join();
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }

  //this resets the expression and result to empty fields
  void clearAll() {
    _expression = '';
    _result = '';
    notifyListeners();
  }
}

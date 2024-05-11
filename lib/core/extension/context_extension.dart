// ignore_for_file: camel_case_extensions

import 'package:flutter/material.dart';

extension context on BuildContext {
  //! Size
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;


  //! Navigation
  Future<dynamic> pushName(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushAndRemoveUntil(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  void pop() => Navigator.of(this).pop();
}

import 'package:flutter/material.dart';

extension MediaQueryValues on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
  double get toPadding => MediaQuery.of(this).viewPadding.top;
  double get bottom => MediaQuery.of(this).viewInsets.bottom;
}


extension Navigation on BuildContext{

  Future<dynamic> pushNamed(String routeName, {Object ? arguments}) {
    return Navigator.of(this).pushNamed(routeName,arguments: arguments);
  }
  Future<dynamic> pushReplacementNamed(String routeName, {Object ? arguments}) {
    return Navigator.of(this).pushReplacementNamed(routeName,arguments: arguments);
  }
  Future<dynamic> pushNamedAndRemoveUntil(String routeName, {Object ? arguments, required RoutePredicate predicate}) {
    return Navigator.of(this).pushNamedAndRemoveUntil(routeName,predicate,arguments: arguments);
  }

  void pop() => Navigator.of(this).pop();
}
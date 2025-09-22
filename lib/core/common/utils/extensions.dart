import 'package:flutter/material.dart';

extension BuildContextHelper on BuildContext {
  double get getHeight => MediaQuery.of(this).size.height;

  double get getWidth => MediaQuery.of(this).size.width;

  double get isKeyboardVisible => MediaQuery.of(this).viewInsets.bottom;
}

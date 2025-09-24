import 'package:flutter/material.dart';

class Utils {
  static void showBottomSheet(BuildContext context, Widget widget) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,

      builder: (context) => widget,
    );
  }
}

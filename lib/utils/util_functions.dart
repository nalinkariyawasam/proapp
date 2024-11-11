import 'package:flutter/material.dart';

class UtilFunctions {
  // navigator push function
  static void navigateTo(BuildContext context, Widget widget) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
  }

// navigator pop function
  static void goBack(BuildContext context) {
    Navigator.pop(context);
  }
}

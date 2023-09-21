import 'package:flutter/material.dart';
import 'package:app/modules/home/home_page.dart';

abstract class Router {
  static String home = "/";
  static String items = "/items";

  static Map<String, WidgetBuilder> getRoutes(context) {
    return {
      home: (context) => HomePage(),
    };
  }
}

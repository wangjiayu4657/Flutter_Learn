import 'package:flutter/material.dart';

class JYTheme {
  static const double bodySize = 14;
  static const double smallSize = 16;
  static const double normalSize = 18;
  static const double largerSize = 22;

  static final normal = ThemeData(
    primarySwatch: Colors.pink,
    canvasColor: Color.fromRGBO(255, 244, 222, 1.0),
    textTheme: TextTheme(
      bodyText1: TextStyle(fontSize: bodySize),
      headline1: TextStyle(fontSize: smallSize),
      headline2: TextStyle(fontSize: normalSize),
      headline3: TextStyle(fontSize: largerSize),
    ),
  );

  static final dark = ThemeData(
    primarySwatch: Colors.grey,
    canvasColor: Color.fromRGBO(255, 24, 222, 1.0),
    textTheme: TextTheme(
      bodyText1: TextStyle(fontSize: bodySize),
      headline1: TextStyle(fontSize: smallSize),
      headline2: TextStyle(fontSize: normalSize),
      headline3: TextStyle(fontSize: largerSize),
    ),
  );
}
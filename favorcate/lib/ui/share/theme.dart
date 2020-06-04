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
      bodyText1: TextStyle(fontSize: bodySize,color: Colors.black87),
      headline1: TextStyle(fontSize: smallSize,color: Colors.black87),
      headline2: TextStyle(fontSize: normalSize,color: Colors.black87),
      headline3: TextStyle(fontSize: largerSize,color: Colors.black87),
    ),
  );

  static final dark = ThemeData(
    primarySwatch: Colors.grey,
    canvasColor: Color.fromRGBO(255, 24, 222, 1.0),
    textTheme: TextTheme(
      bodyText1: TextStyle(fontSize: bodySize,color: Colors.black87),
      headline1: TextStyle(fontSize: smallSize,color: Colors.black87),
      headline2: TextStyle(fontSize: normalSize,color: Colors.black87),
      headline3: TextStyle(fontSize: largerSize,color: Colors.black87),
    ),
  );
}
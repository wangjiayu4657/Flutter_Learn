import 'package:favorcate/ui/pages/favor/favor.dart';
import 'package:favorcate/ui/pages/home/home.dart';
import 'package:favorcate/ui/pages/main/main.dart';
import 'package:favorcate/ui/pages/other/unknown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JYRoute {
  static final String initialRoute = JYMainPage.mainRoute;
  static final Map<String, WidgetBuilder> routes = {
    JYMainPage.mainRoute:(ctx) => JYMainPage(),
    JYHomePage.routeName:(ctx) => JYHomePage(),
    JYFavorPage.routeName:(ctx) => JYFavorPage()
  };

  static final RouteFactory generate = (setting){
    return null;
  };

  static final RouteFactory unknown = (setting){
    return MaterialPageRoute(
      builder: (ctx) => JYUnKnownPage()
    );
  };
}
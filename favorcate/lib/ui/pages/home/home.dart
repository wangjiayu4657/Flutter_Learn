import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_content.dart';

class JYHomePage extends StatelessWidget {
  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("首页"),centerTitle: true),
      body: JYHomeContent(),
    );
  }
}

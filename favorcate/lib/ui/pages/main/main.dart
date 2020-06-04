import 'package:favorcate/ui/pages/main/initialize.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JYMainPage extends StatefulWidget {
  static const String mainRoute = "/";

  @override
  _JYMainPageState createState() => _JYMainPageState();
}

class _JYMainPageState extends State<JYMainPage> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: items,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

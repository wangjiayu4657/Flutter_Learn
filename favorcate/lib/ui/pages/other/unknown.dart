import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JYUnKnownPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("错误页")),
      body: Container(
        child: Center(
          child: Text("this is a error page"),
        ),
      ),
    );
  }
}

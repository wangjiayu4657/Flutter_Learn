import 'package:favorcate/core/model/category_model.dart';
import 'package:favorcate/core/service/json_parse.dart';
import 'package:flutter/cupertino.dart';

import 'package:favorcate/core/extension/int_extension.dart';
import 'package:flutter/material.dart';

class JYHomeContent extends StatefulWidget {
  @override
  _JYHomeContentState createState() => _JYHomeContentState();
}

class _JYHomeContentState extends State<JYHomeContent> {

  List<CategoryModel> _categories = [];

  @override
  void initState() {
    super.initState();

    JsonParse.getCatergoryData().then((value){
      setState(() {
        _categories = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(10.px),
      itemCount: _categories.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.px,
        mainAxisSpacing: 10.px,
        childAspectRatio: 1.5
      ),
      itemBuilder: (ctx,index){

        final bgColor = _categories[index].cColor;

        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(  //线性渐变色
              colors: [
                bgColor.withOpacity(0.5),
                bgColor
              ]
            ),
            color: Colors.red,
            borderRadius: BorderRadius.circular(8)
          ),
          alignment: Alignment.center,
          child: Text(
            _categories[index].title,
            style: Theme.of(context).textTheme.headline2.copyWith(
              fontWeight: FontWeight.bold
            )
          ),
        );
      }
    );
  }
}

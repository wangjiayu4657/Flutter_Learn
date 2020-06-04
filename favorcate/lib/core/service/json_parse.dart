import 'dart:convert';

import 'package:favorcate/core/model/category_model.dart';
import 'package:flutter/services.dart';

class JsonParse {
  static Future<List<CategoryModel>> getCatergoryData() async {

    List<CategoryModel> categories = [];

    //获取json文件
    final jsonString = await rootBundle.loadString("assets/json/category.json");
    //将获取到的json字符串解析成 Map 对象
    final result = json.decode(jsonString);
    //取出数据数组
    final resultList = result["category"];
    //遍历数据将并转换成对应数据模型
    for(var json in resultList) {
       categories.add(CategoryModel.fromJson(json));
    }

    return categories;
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CategoryMealsScreen extends StatelessWidget {
  static const routeName = 'category_meals';

  @override
  Widget build(BuildContext context) {

    final routeArg = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArg['id'];
    final categoryTitle = routeArg['title'];

    return Scaffold(
      appBar: AppBar(title:Text(categoryTitle)),
      body: null,
    );
  }
}
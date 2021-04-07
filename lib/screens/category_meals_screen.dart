import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/dummy_data.dart';
import 'package:meal_app/models/meal.dart';
import 'package:meal_app/widgets/meal_item.dart';


class CategoryMealsScreen extends StatelessWidget {
  static const routeName = 'category_meals';

  @override
  Widget build(BuildContext context) {

    final routeArg = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArg['id'];
    final categoryTitle = routeArg['title'];
    final categoryMeals = DUMMY_MEALS.where((meal) {

      return meal.categories.contains(categoryId); // return meal after filtering..

    }).toList();

    return Scaffold(
      appBar: AppBar(title:Text(categoryTitle)),
      body: ListView.builder(
        itemBuilder: (ctx, index){
          return MealItem(
            imageUrl: categoryMeals[index].imageUrl,
            title: categoryMeals[index].title,
            duration: categoryMeals[index].duration,
            complexity: categoryMeals[index].complexity,
            affordability: categoryMeals[index].affordability ,
            id: categoryMeals[index].id 

          );


        },
        itemCount: categoryMeals.length ,),
    );
  }
}
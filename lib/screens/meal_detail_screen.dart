import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {


  static const routeName = 'meeal_detail';
  @override
  Widget build(BuildContext context) {

    final mealId = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) =>
    meal.id == mealId
    ); // this is one element not a list

    return  Scaffold(
      appBar: AppBar(title: Text(selectedMeal.title)),
      body: Column(
        children:[

          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(selectedMeal.imageUrl, fit: BoxFit.cover,),
          )

        ]
      ),
    );
  }
}
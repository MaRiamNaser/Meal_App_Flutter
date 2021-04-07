import 'package:flutter/material.dart';
import 'package:meal_app/screens/categories_screen.dart';
import 'package:meal_app/screens/category_meals_screen.dart';
import 'package:meal_app/screens/filters_screen.dart';
import 'package:meal_app/screens/meal_detail_screen.dart';
import 'package:meal_app/screens/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
 
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254,229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(
            color: Color.fromRGBO(20, 50, 50, 1),
          ),
           body2: TextStyle(
            color: Color.fromRGBO(20, 50, 50, 1),
          ),
          title: TextStyle(
            fontSize:20,
            fontFamily: 'RobotoCondensed', 
            )
        ) 
      ),
     // home: MyHomePage(title: 'Flutter Demo Home Page'),
     // home: CategoriesScreen(),
      routes: {
        '/': (context) => TabsScreen(),
        CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (context) =>MealDetailScreen(),
        FiltersScreen.routeName: (context) => FiltersScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
     
        title: Text(widget.title),
      ),
      body: null,

    );
  }
}

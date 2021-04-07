import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/widgets/main-drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {

 bool _glutenFree = false;
 bool _lactoseFree = false;
 bool _vegan = false;
 bool _vegetarian = false;


Widget buildSwitchTile(String title, String description, bool currentValue, Function updateVavlue){

   return SwitchListTile(
                    title: Text(title), value: currentValue,
                    subtitle: Text(description),
                    onChanged:updateVavlue,
                  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Filters!"),
      
      ),
      body: Column(
        children:[ 
          Container(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text("Adjust Your Meal Selection.", 
              style: Theme.of(context).textTheme.title
              ),
            ),
            ),
            Expanded(
              child: ListView(
                children: [
                  buildSwitchTile("Gluten-free",
                   'Only include gluten-free meals',
                   _glutenFree,
                   (newValue){
                     setState(() {
                       _glutenFree = newValue;
                     });
                   }
                   ),

                   buildSwitchTile("Lactose-free",
                   'Only include Lactose-free meals',
                   _lactoseFree,
                   (newValue){
                     setState(() {
                       _lactoseFree = newValue;
                     });
                   }
                   ),

                   buildSwitchTile("Vegetarian",
                   'Only include Vegetarian meals',
                   _vegetarian,
                   (newValue){
                     setState(() {
                       _vegetarian = newValue;
                     });
                   }
                   ),
                   buildSwitchTile("Vegan",
                   'Only include Vegan meals',
                    _vegan,
                   (newValue){
                     setState(() {
                       _vegan = newValue;
                     });
                   }
                   ),
                ],
              ),
            
            )
        ],
     
      ),
      drawer: MainDrawer(),
    );
  }
}
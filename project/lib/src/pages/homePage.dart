import 'package:flutter/material.dart';
import 'package:project/src/widget/foodBought.dart';
import 'package:project/src/widget/foodCategory.dart';
import 'package:project/src/widget/homeTopWidget.dart';
import 'package:project/src/widget/searchBar.dart';

import '../data/foodData.dart';
import '../models/foodModel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<FoodData> _foods = foods;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20.0, top: 50.0, right: 20.0),
        children: <Widget>[ 
          HomeTopWidget(),
           SizedBox(
            height: 15.0,
          ),
          SearchBar(),
          FoodCategory(),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Receitas rápidas",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "View All",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.orangeAccent),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Column(
            children: _foods.map(buildFoodBought).toList(),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
				currentIndex: 0,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.house),
              title: Text("Home")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Meu perfil")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.timer),
              title: Text("Recentes")
          ),
        ],
      ),
    );
  }

  Widget buildFoodBought(FoodData food) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: BoughtFood(
        imagePath: food.imagePath,
        id: food.id,
        name: food.name,
        //price: food.price,
        //discount: food.discount,
        //ratings: food.ratings,
        category: food.category,
      ),
    );
  }
}
import 'package:project/src/widget/menuCard.dart';
import 'package:flutter/material.dart';
import 'package:project/src/widget/foodCard.dart';

//import '../data/categoryData.dart';
import '../data/categoryMenuModel.dart';
import '../models/categoryModel.dart';
import 'foodCard.dart';
import 'menuCard.dart';


class FoodCategory extends StatelessWidget{
  final List<Category> _categories = categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView.builder(
        scrollDirection:Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context ,int index )
        {
          //return FoodCard(
          //  categoryName: _categories[index].categoryName,
          //  imagePath: _categories[index].imagePath,
          //  noOfItem: _categories[index].noOfItem,
          return MenuCard( _categories[index].categoryName);
        },
      ),
    );
  }

}
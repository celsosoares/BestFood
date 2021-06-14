import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget
{

  final String categoryName;

  MenuCard(this.categoryName);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0, top: 20.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
          child: Row(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    categoryName,style: TextStyle(
                      fontSize: 13.0,color: Colors.orange
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  
}
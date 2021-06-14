import 'package:flutter/material.dart';

class HomeTopWidget extends StatelessWidget
{
  final textstyle =TextStyle(
    fontSize: 32.0,
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Receitas para você ",
                      style: textstyle,
                    ),
                  ],
                ),
              ],
            ),
    );
  }
  
}
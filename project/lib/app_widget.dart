import 'package:flutter/material.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(backgroundColor: Colors.blue),
      home: HomePage()
    );
  }
}

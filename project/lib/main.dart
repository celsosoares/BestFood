import 'package:flutter/material.dart';
import 'package:project/src/pages/signInPage.dart';
import 'package:project/src/screens/previewScreen.dart';


void main()
{
  runApp(MainApp());
}

class MainApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BestFood",
      theme: ThemeData(
        primaryColor: Colors.orangeAccent,
      ),
      //home: MainScreen(),
      //home: SignInPage(),
      home: PreviewScreen(),
    );
  }
  
}
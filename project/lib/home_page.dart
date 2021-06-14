import 'package:project/app_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>{
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(
                  color: Colors.orange)
                ),
                color: Colors.orange,
                textColor: Colors.white,
                padding: EdgeInsets.all(20.0),
                onPressed: () {},
                child: Text(
                  "Criar perfil".toUpperCase(),
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
            ),
            SizedBox(height: 20,), //espaçamento entre as caixas
            FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(
                  color: Colors.white)
                ),
                color: Colors.white,
                textColor: Colors.black,
                padding: EdgeInsets.all(20.0),
                onPressed: () {},
                child: Text(
                  "Entrar".toUpperCase(),
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
            ),
          ],
        )
      ),
    );
  }
}
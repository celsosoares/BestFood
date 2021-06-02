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
      /*appBar: AppBar(
        title: Text("Barra superior")
      ),*/
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /*Text(
              'Contador: $counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 25,),
            RaisedButton(
              child: Text(
                'Incrementar',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              onPressed: (){
                setState(() {
                  counter++;
                });
              },
              color: Theme.of(context).primaryColor,
            ),*/
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
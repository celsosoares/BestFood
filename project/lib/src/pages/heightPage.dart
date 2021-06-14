import 'package:flutter/material.dart';
import 'package:project/src/pages/objectivePage.dart';
import 'package:project/src/pages/heightPage.dart';



class HeightPage extends StatefulWidget {
  @override
  _HeightPageState createState() => _HeightPageState();
}

void _showDialog(BuildContext context) {
  // flutter defined function
  showDialog(
    context: context,
    builder: (BuildContext context) {
      // return object of type Dialog
      return AlertDialog(
        title: new Text("Aviso"),
        content: new Text("Cadastro realizado com sucesso!"),
        actions: <Widget>[
          // usually buttons at the bottom of the dialog
          new FlatButton(
            child: new Text("OK"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    }
  );
}

class _HeightPageState extends State<HeightPage> {

  Widget _buildHeightText() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Ex: 1.70cm",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
      ),
    );
  }

  Widget _buildWeightText() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Ex: 65.0 Kg",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
      ),
    );
  }

  //@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        title: Text("Meu Perfil"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Qual é a sua altura ?",
                style: TextStyle(
                  fontSize: 20.0, 
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 10.0,
              ),
              
              Card(
                elevation: 5.0,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      _buildHeightText(),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Qual é o seu peso ?",
                style: TextStyle(
                  fontSize: 20.0, 
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 10.0,
              ),
              
              Card(
                elevation: 5.0,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      _buildWeightText(),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                height: 50.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)),
                  child: Text(
                    "Próximo",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.orange,
                  elevation: 5.0,
                  padding: EdgeInsets.fromLTRB(75.0, 0.0, 75.0, 0.0),
                  onPressed: (){
                    _showDialog(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
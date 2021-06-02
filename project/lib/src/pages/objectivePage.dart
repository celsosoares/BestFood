import 'package:flutter/material.dart';
import 'package:project/src/pages/dietPage.dart';


class ObjectivePage extends StatefulWidget {
  @override
  _ObjectivePageState createState() => _ObjectivePageState();
}

class _ObjectivePageState extends State<ObjectivePage> {
  
  int _groupValue = -1;

  Widget _myRadioButton({String title, int value, Function onChanged}) {
    return RadioListTile(
      value: value,
      groupValue: _groupValue,
      onChanged: onChanged,
      title: Text(title),
    );
  }

  @override
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
                "Qual o seu objetivo ?",
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
                      _myRadioButton(
                        title: "Emagrecer",
                        value: 0,
                        onChanged: (newValue) => setState(() => _groupValue = newValue),
                      ),
                      _myRadioButton(
                        title: "Ganhar peso",
                        value: 1,
                        onChanged: (newValue) => setState(() => _groupValue = newValue),
                      ),
                      _myRadioButton(
                        title: "Manter peso",
                        value: 2,
                        onChanged: (newValue) => setState(() => _groupValue = newValue),
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35.0),
                  color: Colors.orange,
                ),
                child: RaisedButton(
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
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DietPage()),
                    );
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
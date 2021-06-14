import 'package:project/src/pages/signInPage.dart';
import 'package:flutter/material.dart';
import 'package:project/src/pages/SignUpPage.dart';

class PreviewScreen extends StatefulWidget {
  @override
  _PreviewScreenState createState() => _PreviewScreenState();
}

class _PreviewScreenState extends State<PreviewScreen> {
  Widget _buildTextEmail() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Email or Username",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
      ),
    );
  }
  bool _passVis=true;


  Widget _buildTextPass() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Password",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
        suffixIcon: IconButton(
          icon:_passVis? Icon(Icons.visibility_off):Icon(Icons.visibility),
          onPressed: ()
          {
            setState(() {
              _passVis=!_passVis;
             
            });

          },
        ),
      ),
      obscureText: _passVis,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png", ),
              fit: BoxFit.cover,
            ),
          ),  
            child: SingleChildScrollView(  
              child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 100.0),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Container(
                height: 190,
                width: 190,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/logo_laranja.jpg", ),
                    fit: BoxFit.fill,
                ),
              ), 
              ),
              Divider(
                height: 20.0,
                color: Colors.transparent,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "BEM-VINDO AO",
                    style: TextStyle(
                      color: Colors.orangeAccent[700],
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      fontFamily:  'PatuaOne'
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
              Text(
                "Best Food",
                style: TextStyle(
                  color: Colors.orange[800],
                  fontSize: 45.0, 
                  fontWeight: FontWeight.bold,
                  //fontFamily: 'PatuaOne',
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                height: 50.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)),
                  child: Text(
                    "CRIAR PERFIL",
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                  },
                ),
              ),
              Divider(
                height: 20.0,
                color: Colors.transparent,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "JÁ TEM CADASTRO ?",
                    style: TextStyle(
                      color: Colors.orangeAccent,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
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
                    "ENTRAR",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.white,
                  elevation: 5.0,
                  padding: EdgeInsets.fromLTRB(100.0, 0.0, 100.0, 0.0),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInPage()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      )
    );
  }
}
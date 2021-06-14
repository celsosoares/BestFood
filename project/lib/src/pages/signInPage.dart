import 'package:flutter/material.dart';
import 'package:project/src/pages/RecoveryPwdPage.dart';
import 'package:project/src/pages/HomePage.dart';


class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
              child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: 
                  new Image.asset("assets/images/logo_laranja.jpg"),
                  height: 190,
                  width: 190,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Login",
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 90.0,
              ),
              Divider(
                height: 5.0,
                thickness: 3.0,
                color: Colors.orange,
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
                      _buildTextEmail(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _buildTextPass(),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: ()
                {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>RecoveryPwdPage()));
                },
                child: Text(
                  "Esqueceu a senha ?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                    fontSize: 17.0),
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
                    "Login",
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
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                ),
              ),
              Divider(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:project/src/pages/genderPage.dart';


class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  Widget _buildTextEmail() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Email",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
      ),
    );
  }

  Widget _buildBirthday() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Data de nascimento",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
      ),
    );
  }

  Widget _buildAddress() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Endereço",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
      ),
    );
  }

  Widget _buildPhone() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Telefone",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
      ),
    );
  }

  Widget _buildTextUser() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Nome Completo",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
      ),
    );
  }
  bool _passVis=true;
  bool _passVisConf=true;

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

  Widget _buildTextPassConf() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Confirm Password",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
        suffixIcon: IconButton(
          icon:_passVisConf? Icon(Icons.visibility_off):Icon(Icons.visibility),
          onPressed: ()
          {
            setState(() {
              _passVisConf=!_passVisConf;
             
            });

          },
        ),
      ),
      obscureText: _passVisConf,
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
                  new Image.asset("assets/images/logo.png"),
                  height: 100,
                  width: 100,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Sign-up",
                style: TextStyle(
                  fontSize: 20.0, 
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Divider(
                height: 5.0,
                thickness: 3.0,
                color: Colors.orange,
              ),
              SizedBox(
                height: 50.0,
              ),
              
              Card(
                elevation: 5.0,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      _buildTextUser(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _buildBirthday(),
                      SizedBox(
                        height: 20.0,
                      ),
                       _buildTextEmail(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _buildAddress(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _buildPhone(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _buildTextPass(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _buildTextPassConf(),
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
                      MaterialPageRoute(builder: (context) => GenderPage()),
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
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(primarySwatch: Colors.blue),
  home: LoginPage(),
));

class LoginPage extends StatefulWidget{
  @override
  State createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage>{

  var mobileNumber = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  void _onButtonPress(){
    print(mobileNumber);
    Navigator.of(context).pushReplacementNamed('/Otp', arguments: mobileNumber.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Login", style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(40.0),
            child: Form(
              autovalidate: true,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    controller: mobileNumber,
                    decoration: InputDecoration(
                      labelText: "ENTER PHONE NUMBER",
                      fillColor: Colors.white
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                  ),
                  MaterialButton(
                    height: 50.0,
                    minWidth: 150.0,
                    color: Colors.green,
                    splashColor: Colors.teal,
                    textColor: Colors.white,
                    child: Text("GET OTP"),
                    // child: Icon(Icons.arrow_right),
                    onPressed: () { _onButtonPress();},
                  ),
                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}
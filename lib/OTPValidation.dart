import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(primarySwatch: Colors.blue),
  // onGenerateRoute: (args){
  //   final mobileNumber = args.arguments;
  //   return OTPValidation(mobileNumber);
  // },
  home: OTPValidation(),
));
  

class OTPValidation extends StatefulWidget{
  @override
  State createState() => OTPValidationState();
}

class OTPValidationState extends State<OTPValidation>{

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          // title: Text("ENTER OTP for " + mobileNumber, style: TextStyle(
          title: Text("ENTER OTP", style: TextStyle(
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
                    decoration: InputDecoration(
                      labelText: "ENTER OTP",
                      fillColor: Colors.blue
                    ),
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
                    child: Text("VERIFY OTP"),
                    // child: Icon(Icons.arrow_right),
                    onPressed: () {Navigator.of(context).pushReplacementNamed('/HomePage');},
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
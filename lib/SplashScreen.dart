import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(MaterialApp(
  home: SplashScreen(),
));

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{

  startTime() async{
    var _duration = Duration(seconds: 2);
    return Timer(_duration, navigationPage);
  }

  void navigationPage(){
    Navigator.of(context).pushReplacementNamed('/Login');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: AssetImage('assets/images/splash.png'),
          )
          // Container(
          //   decoration: BoxDecoration(
          //     color: Colors.blue
          //   ),
          // ),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: <Widget>[
          //     Expanded(
          //       flex: 2,
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: <Widget>[
          //           CircleAvatar(
          //             backgroundColor: Colors.white,
          //             radius: 50,
          //             child: Icon(
          //               Icons.shopping_cart,
          //               color: Colors.blue,
          //               size: 40
          //             ),
          //             )
          //         ],
          //       ),
          //     )
          //   ],
          // ),
        ],
      ),
    );
  }
}
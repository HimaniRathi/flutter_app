import 'package:flutter/material.dart';
import './HomePage.dart';
import './SplashScreen.dart';
import './Counter.dart';
import './LoginPage.dart';
import './OTPValidation.dart';

void main() => runApp(MaterialApp(
  home: SplashScreen(),
  routes: <String, WidgetBuilder>{
      '/Login': (BuildContext context) => LoginPage(),
      '/Otp': (BuildContext context) => OTPValidation(),
      '/HomePage': (BuildContext context) => HomePage(),
      '/Counter': (BuildContext context) => Counter()
    },
));



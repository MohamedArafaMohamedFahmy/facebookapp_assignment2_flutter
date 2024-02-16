import 'package:facebook_app_assignment2/home_screen.dart';
import 'package:facebook_app_assignment2/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApplication());
}

class MyApplication extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
         LoginScreen.routeName : (context)=> LoginScreen(),
         HomeScreen.routeName : (context) => HomeScreen(),
      },
      initialRoute: LoginScreen.routeName,
    );
  }
}

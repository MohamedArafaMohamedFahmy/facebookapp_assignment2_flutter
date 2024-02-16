import 'package:facebook_app_assignment2/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "LoginScreen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1976d2),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.symmetric(vertical: 50),
                  child: Image.asset(
                    "assets/images/facebook.png",
                    width: 50,
                    height: 50,
                    alignment: Alignment.center,
                  )),
            ],
          ),
          Spacer(
            flex: 1,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(top: 5, left: 5, right: 5),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 0.5)),
                labelText: 'Email or Phone',
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(top: 5, left: 5, right: 5),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 0.5)),
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black12,
                    padding: EdgeInsets.all(10)),
                child: Text(
                  "LOG IN",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                )),
          ),
          Spacer(
            flex: 1,
          ),
          InkWell(
              child: Text(
            'Sign Up For Facebook',
            style: TextStyle(fontSize: 18, color: Color(0xFFE5E2E2FF)),
          )),
          InkWell(
              child: Text(
            'Forgot Password',
            style: TextStyle(fontSize: 15, color: Color(0xFFE5E2E2FF)),
          )),
          Spacer(
            flex: 1,
          )
        ],
      ),
    );
  }
}

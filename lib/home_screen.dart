import 'package:facebook_app_assignment2/posts.dart';
import 'package:facebook_app_assignment2/stories.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Color(0xFF1976d2),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(top: 10, left: 5, right: 5),
              child: ListView.separated(
                itemBuilder: (context, index) => Stories(),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                separatorBuilder: (context, index) => Container(
                  width: 8,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 4,
            child: Container(
              child: ListView.separated(
                itemBuilder: (context, index) => Posts(),
                scrollDirection: Axis.vertical,
                itemCount: 10,
                separatorBuilder: (context, index) => Container(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 40,
                  )),
              SizedBox(
                width: 2,
              ),
              Column(
                children: [
                  Text(
                    "Owner",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Row(
                    children: [
                      Text(
                        "3h",
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.public,
                        size: 15,
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 3,
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 5),
            child: Text(
              "My Post",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  '100',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                SizedBox(
                  width: 3,
                ),
                Image.asset(
                  "assets/images/like.jpg",
                  width: 35,
                  height: 35,
                ),
                Spacer(
                  flex: 3,
                ),
                Text(
                  '100 Comments',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: BorderDirectional(
              bottom: BorderSide(
                width: 2,
                color: Colors.black12,
              ),
              top: BorderSide(
                width: 2,
                color: Colors.black12,
              ),
            )),
            child: Row(
              children: [
                Expanded(
                    child: Image.asset(
                  "assets/images/singleLike.jpg",
                  width: 30,
                  height: 30,
                )),
                Expanded(
                    child: Image.asset(
                  "assets/images/comment.jpg",
                  width: 30,
                  height: 30,
                )),
                Expanded(
                    child: Image.asset(
                  "assets/images/share.png",
                  width: 30,
                  height: 30,
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}

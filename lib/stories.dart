
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/facebookStory.jpg',
                  width: 70,
                  height: 100,
                  fit: BoxFit.fill,
                )),
            Icon(
              Icons.person,
              color: Colors.blue,
            ),
            Positioned(
                bottom: 5,
                left: 10,
                child: Text(
                  'Owner',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ],
    );
  }
}

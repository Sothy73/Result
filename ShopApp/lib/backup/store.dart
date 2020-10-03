import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/proxy_box.dart';

import 'fultter.dart';

void main() {
  runApp(MyAppA());
}

class MyAppA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
        color: Colors.pink[200],
        height: 250,
        child: Container(
          child: ClipPath(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 30, left: 20, bottom: 10),
                    child: Text(
                      'airbnb',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    )),
                Container(
                    child: Container(
                  margin: EdgeInsets.fromLTRB(20, 5, 20, 100),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.pink[100],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        hintText: "Try New York City",
                        hintStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none),
                  ),
                )),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
            clipper: MyClipper(),
          ),
        ),
      )),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height - 20);

    var firstControlPoint = new Offset(size.width / 4, size.height);
    var firstEndPoint = new Offset(size.width / 2.25, size.height - 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
        new Offset(size.width - (size.width / 3.25), size.height - 65);
    var secondEndPoint = new Offset(size.width, size.height - 65);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

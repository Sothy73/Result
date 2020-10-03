import 'package:ShopApp/CustomShapeClipper.dart';
import 'package:flutter/material.dart';

Color firstColor = Colors.red[200];
Color secondColor = Colors.pink[300];

class HomeScreenTopPage extends StatefulWidget {
  @override
  _HomeScreenTopPageState createState() => _HomeScreenTopPageState();
}

class _HomeScreenTopPageState extends State<HomeScreenTopPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            height: 230.0,
            //color: Colors.pink[200],
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              secondColor,
              firstColor,
            ])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.only(
                      top: 35,
                      left: 20,
                      bottom: 5,
                    ),
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
          ),
        ),
      ],
    );
  }
}

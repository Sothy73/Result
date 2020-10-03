import 'package:ShopApp/HomePage.dart';
import 'package:flutter/material.dart';

class ShopV extends StatefulWidget {
  @override
  _ShopVState createState() => _ShopVState();
}

class _ShopVState extends State<ShopV> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shop Airbub',
        home: Scaffold(
          body: Column(
            children: [
              HomeScreenTopPage(),
              Expanded(
                child: ListView(
                  children: [
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                    Text("kjhgkhgk"),
                  ],
                ),
              )
            ],
          ),
          floatingActionButton: FloatingActionButton(
              child: Icon(
                Icons.favorite_border,
              ),
              //backgroundColor: Colors.white,
              onPressed: () {}),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.pink[200],
            unselectedItemColor: Colors.grey,
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text('Home')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), title: Text('Like')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text('Srt')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.navigation), title: Text('Nav')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_pin), title: Text('Profile')),
            ],
            type: BottomNavigationBarType.fixed,
          ),
        ));
  }
}

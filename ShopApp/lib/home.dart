import 'package:ShopApp/HomePage.dart';
import 'package:ShopApp/cuisineItems.dart';
import 'package:ShopApp/cuisine_items_card.dart';
import 'package:flutter/material.dart';

class ShopV extends StatefulWidget {
  @override
  _ShopVState createState() => _ShopVState();
}

class _ShopVState extends State<ShopV> {
  int _currentIndex = 0;
  List<CuisineItems> cuisinItems = [
    CuisineItems(text: 'Homes', secondaryText: null, image: 'image/Home_1.jpg'),
    CuisineItems(
        text: 'Restaurants', secondaryText: null, image: 'image/Food_1.jpg'),
    CuisineItems(text: 'Pizza', secondaryText: null, image: 'image/Food_2.jpg'),
    CuisineItems(text: 'Houre', secondaryText: null, image: 'image/Home_2.jpg'),
  ];
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
                  padding: EdgeInsets.only(left: 15),
                  children: [
                    SizedBox(),
                    Text(
                      "Categories",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 150,
                      child: ListView.builder(
                        itemCount: 4,
                        padding: EdgeInsets.only(left: 16),
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return CuisineItemsCard(
                            cuisineItems: cuisinItems[index],
                          );
                        },
                      ),
                    ),
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

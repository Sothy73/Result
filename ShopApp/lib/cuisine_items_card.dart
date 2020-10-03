import 'package:ShopApp/cuisineItems.dart';
import 'package:flutter/material.dart';

class CuisineItemsCard extends StatefulWidget {
  CuisineItems cuisineItems;
  CuisineItemsCard({@required this.cuisineItems});
  @override
  _CuisineItemsCardState createState() => _CuisineItemsCardState();
}

class _CuisineItemsCardState extends State<CuisineItemsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            child: Image.asset(
              widget.cuisineItems.image,
              height: 80,
              width: 120,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          SizedBox(),
          Text(
            widget.cuisineItems.text,
            textAlign: TextAlign.center,
          ),
          SizedBox(),
        ],
      ),
    );
  }
}

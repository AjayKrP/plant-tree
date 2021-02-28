import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PlantCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Container(
        padding: EdgeInsets.only(left: 25.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: [
            _cardWidget(context, 'Monstera', 'assets/ficus.png', '25'),
            SizedBox(width: 10.0,),
            _cardWidget(context, 'Monstera', 'assets/ficus.png', '25'),
            SizedBox(width: 10.0,),
        ],
        ),
      ),
    );
  }

  _cardWidget(BuildContext context, String plantName, String imagePath, String price) {
    return  Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Container(
            width: 250.0,
            height: 300.0,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        Positioned(
          top: 210.0,
          child: Container(
            width: 250.0,
            child: Column(
              children: [
                Text(
                  plantName,
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '\$'+price,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: 20.0,
          right: 20.0,
          child: Container(
            width: 225.0,
            height: 200.0,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Image(
              image: AssetImage(imagePath),
            ),
          ),
        ),
        Positioned(
          top: 315.0,
          left: 50.0,
          right: 50.0,
          child: FlatButton(
            onPressed: (){},
            padding: EdgeInsets.all(8.0),
            color: Colors.grey,
            child: Text(
              'View Details'
            ),
          ),
        )
      ],
    );
  }
}

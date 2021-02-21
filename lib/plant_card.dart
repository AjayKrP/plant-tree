import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PlantCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Container(
        height: 350.0,
        padding: EdgeInsets.only(left: 25.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            _cardWidget(context, 'Monstera', 'assets/ficus.png', '25'),
            SizedBox(width: 10.0,),
            _cardWidget(context, 'Monstera', 'assets/ficus.png', '25'),
        ],
        ),
      ),
    );
  }

  _cardWidget(BuildContext context, String plantName, String imagePath, String price) {
    return  Stack(
      children: [
        Container(
          width: 325.0,
          height: 350.0,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: [
              Container(
                width: 225.0,
                height: 350.0 * 0.6,
                decoration: BoxDecoration(
                  color: Colors.black12.withOpacity(.5),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Image(
                  image: AssetImage(imagePath),
                ),
              ),
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
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:plan_tree/plant_detail.dart';

class TopSellingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 250.0,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Container(
            height: 200.0,
            child: Image(
              image: AssetImage('assets/ficus.png'),
            ),
          ),
          Container(
            height: 50.0,
            decoration: BoxDecoration(
              color: Colors.cyan.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PlantDetails()),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Snake Plant',
                    ),
                    Text(
                        '\$18'
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

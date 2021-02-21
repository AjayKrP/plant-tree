import 'package:flutter/material.dart';

class PlantDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Back'),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.shopping_cart),
                )
              ],
            ),
          ),
          Row(
            children: [
              Column(
                children: [
                  Text('Plant Name'),
                  _iconWithName('Diffused', Icons.wb_sunny),
                  _iconWithName('7 - 10 Days', Icons.pin_drop),
                  _iconWithName('68 - 86 F', Icons.wifi_tethering),
                  _iconWithName('8 - 12 Degree', Icons.kitchen),
                ],
              ),
              Image(
                image: AssetImage('assets/ficus.png'),
              )
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.only(topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0)),
            ),
            child: Column(
              children: [
                Text(
                  'About',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Ciceros De Finibus Bonorum et Malorum for use in a type specimen book.'
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: (){},
                          ),
                          Text(
                            '1'
                          ),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: (){},
                          ),
                        ],
                      ),
                      Text(
                        '\$25',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 50.0,
                        height: 50.0,
                        child: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.live_help),
                        ),
                      ),
                      Center(
                        child: InkWell(
                          onTap: (){
                            print('Add to cart');
                          },
                          child: Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: Colors.cyan.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(5.0),
                            ),

                            child: Text(
                              'Add to Cart',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }

  _iconWithName(String name, IconData icon) {
    return Column(
      children: [
        IconButton(
          onPressed: (){},
          icon: Icon(icon),
        ),
        Text(name),
      ],
    );
  }
}

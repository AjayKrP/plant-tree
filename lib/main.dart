import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plan_tree/plant_card.dart';
import 'package:plan_tree/top_selling_cart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plan Tree',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: (){},
              ),
              Image(
                image: NetworkImage('https://www.clipartmax.com/png/middle/24-249044_plant-free-icon-plant-icon-png.png'),
                width: 50.0,
                height: 50.0,
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: (){},
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.tealAccent,
                    borderRadius:  BorderRadius.circular(32),
                  ),
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: 45.0,
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 17),
                      hintText: 'Search your trips',
                      suffixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.filter),
                  onPressed: (){},
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.5),
              isScrollable: true,
              tabs: [
                Tab(
                  child: Text(
                    'Indoor',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Outdoor',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Terrace & Balcony',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Hanging',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            height: 350.0,
            child: TabBarView(
              controller: _tabController,
              children: [
                PlantCard(),
                PlantCard(),
                PlantCard(),
                PlantCard(),
              ],
            ),
          ),
          SizedBox(height: 10.0,),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Selling',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            width: 200.0,
            height: 250.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 10.0,),
                TopSellingCard(),
                SizedBox(width: 10.0,),
                TopSellingCard(),
                SizedBox(width: 10.0,),
                TopSellingCard(),
                SizedBox(width: 10.0,),
                TopSellingCard(),
                SizedBox(width: 10.0,),
              ],
            ),
          ),
          SizedBox(height: 10.0,),
        ],
      ),
    );
  }
}

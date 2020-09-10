import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                top: 40,
                left: 10,
                right: 10,
                bottom: 20,
              ),
              child: Text(
                'What would you like to find?',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Ink(
                  decoration: ShapeDecoration(
                    color: Colors.teal[100],
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.local_airport,
                      color: Colors.teal[500],
                    ),
                  ),
                ),
                Ink(
                  decoration: ShapeDecoration(
                    color: Colors.grey[300],
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.hotel,
                      color: Colors.grey[500],
                    ),
                  ),
                ),
                Ink(
                  decoration: ShapeDecoration(
                    color: Colors.grey[300],
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.directions_walk,
                      color: Colors.grey[500],
                    ),
                  ),
                ),
                Ink(
                  decoration: ShapeDecoration(
                    color: Colors.grey[300],
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.directions_bike),
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Top Destinations',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(color: Colors.teal),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

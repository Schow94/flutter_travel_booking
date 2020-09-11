import 'package:flutter/material.dart';

class OptionBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

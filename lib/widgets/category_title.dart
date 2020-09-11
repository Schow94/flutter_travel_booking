import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  final String title;

  CategoryTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, top: 25, bottom: 10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'See All',
                style: TextStyle(color: Colors.teal),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

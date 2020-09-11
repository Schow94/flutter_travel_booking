import 'package:flutter/material.dart';

class DestinationPreview extends StatelessWidget {
  final String city;
  final String country;
  final String imageUrl;

  DestinationPreview(
      {@required this.city, @required this.country, @required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      height: 280,
      width: 220,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
        children: <Widget>[
          Container(
            width: 220,
            height: 130,
            margin: EdgeInsets.only(
              top: 150,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Card(
              child: Container(
                margin: EdgeInsets.only(
                  top: 40,
                  left: 10,
                  right: 10,
                  bottom: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '125 activities',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        'Enjoy the best trips from top travel agencies at best prices',
                        style: TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 180,
                  height: 180,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 30,
                  top: 120,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      city,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: Colors.white70,
                        ),
                        SizedBox(width: 10),
                        Text(
                          country,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

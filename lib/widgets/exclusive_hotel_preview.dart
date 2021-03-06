import 'package:flutter/material.dart';

class ExclusiveHotelPreview extends StatelessWidget {
  final String name;
  final String address;
  final String imageUrl;
  final int price;

  ExclusiveHotelPreview({
    @required this.name,
    @required this.address,
    @required this.imageUrl,
    @required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      height: 280,
      width: 220,
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
        bottom: 50,
      ),
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
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 5,
                          bottom: 5,
                        ),
                        child: Text(
                          address,
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                      ),
                      Text(
                        '\$$price/night',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            // color: Colors.red,
            child: Align(
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
          ),
        ],
      ),
    );
  }
}

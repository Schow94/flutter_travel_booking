import 'package:flutter/material.dart';

class AttractionPreview extends StatelessWidget {
  final String name;
  final int price;
  final String imageUrl;

  AttractionPreview({
    @required this.name,
    @required this.price,
    @required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          margin: EdgeInsets.only(
            left: 40,
            right: 20,
            top: 10,
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Container(
                      // color: Colors.green,
                      ),
                ),
                Flexible(
                  flex: 3,
                  fit: FlexFit.tight,
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    // color: Colors.blue,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 160,
                          child: Text(
                            name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 2,
                          ),
                          child: Text(
                            'Sightseeing Tour',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.pink[400],
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.pink[400],
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.pink[400],
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.pink[400],
                                size: 20,
                              ),
                              Icon(
                                Icons.star_half,
                                color: Colors.pink[400],
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(5),
                              child: SizedBox(
                                width: 60,
                                height: 20,
                                child: FlatButton(
                                  padding: EdgeInsets.all(0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    '9:00AM',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  color: Colors.teal[100],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              child: SizedBox(
                                width: 60,
                                height: 20,
                                child: FlatButton(
                                  padding: EdgeInsets.all(0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    '11:00AM',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  color: Colors.teal[100],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Container(
                    padding: EdgeInsets.only(top: 40, right: 20),
                    // color: Colors.red,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '\$$price',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'per pax',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          // color: Colors.red,
          margin: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          height: 130,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              imageUrl,
            ),
          ),
        ),
      ],
    );
  }
}

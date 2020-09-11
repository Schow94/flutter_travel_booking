import 'package:flutter/material.dart';

import '../widgets/destination_preview.dart';
import '../widgets/option_bar.dart';
import '../widgets/category_title.dart';
import '../widgets/exclusive_hotel_preview.dart';

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
            OptionBar(),
            CategoryTitle('Top Destinations'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Row(
                  children: <Widget>[
                    DestinationPreview(
                      city: 'Venice',
                      country: 'Italy',
                      imageUrl:
                          'https://images.unsplash.com/photo-1534113414509-0eec2bfb493f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
                    ),
                    DestinationPreview(
                      city: 'Paris',
                      country: 'France',
                      imageUrl:
                          'https://images.unsplash.com/photo-1511739001486-6bfe10ce785f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80',
                    ),
                    DestinationPreview(
                      city: 'Amsterdam',
                      country: 'Netherlands',
                      imageUrl:
                          'https://images.unsplash.com/photo-1512470876302-972faa2aa9a4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
                    ),
                  ],
                ),
              ),
            ),
            CategoryTitle('Exclusive Hotels'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  ExclusiveHotelPreview(
                    name: 'Hotel 0 ',
                    address: '404 Great St',
                    imageUrl:
                        'https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
                  ),
                  ExclusiveHotelPreview(
                    name: 'Hotel 0 ',
                    address: '404 Great St',
                    imageUrl:
                        'https://images.unsplash.com/photo-1571896349842-33c89424de2d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
                  ),
                  ExclusiveHotelPreview(
                    name: 'Hotel 0 ',
                    address: '404 Great St',
                    imageUrl:
                        'https://images.unsplash.com/photo-1582719508461-905c673771fd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
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
